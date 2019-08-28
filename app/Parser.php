<?php

namespace App;

use Carbon\Carbon;
use Egulias\EmailValidator\Exception\ExpectingQPair;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
use stringEncode\Exception;
use Sunra\PhpSimple\HtmlDomParser;

class Parser extends Model
{
    /*************************************
     *       Определим основные ссылки
     * основная страница со списком актёров. COUNT = 50, 100, 150 ...
     * https://www.imdb.com/search/name/?gender=male,female&start={СOUNT}&ref_=rlm
     *
     * персональная страница каждого, например id=2365811
     * https://www.imdb.com/name/nm{id}/
     *
    *************************************/

    protected $table = 'actors';
    // основные страницы со списком актёров
    public $page_links = [];

    // профили
    public $actor_links = [];

    // текущая страница со списком актеров
    public $html = '';
    public $page_url = '';

    // на ком закончили парсинг
    public $last_actor = 1;
    public $default_url = 'https://www.imdb.com/search/name/?gender=male,female&start=1&ref_=rlm';

    /**
     * Страница с актерами
     * @param bool $reset
     * @return bool|string
     * @throws Exception
     */
    public function getPage($reset = false) {
        // формируем ссылку для дальнейшего парсинга
        if (!Parser::all()->isEmpty()) {
            $DB = DB::table('parser')->select(['last_parsed_actor_group'])->orderByDesc('id')->limit(1)->get();
            $this->last_actor = $DB[0]->last_parsed_actor_group;
        } else {
            $this->last_actor = 0;
        }

        // даем возможность начать парсинг сначала
        if (empty($this->last_actor) || $reset === true) {
            $this->last_actor = 1;
        }

        // страница с которой парсим группу с 50 актеров
        $this->page_url = 'https://www.imdb.com/search/name/?gender=male,female&start='.$this->last_actor.'&ref_=rlm';

        $html = $this->curlQuery($this->page_url);

        if (empty($html)) {
            throw new Exception('cURL empty result');
        }

        // обновляем запись в базе по последней группе парсинга
        $this->last_actor += 50;

        DB::table('parser')->insert(['last_parsed_actor_group' => $this->last_actor, 'last_parsed_url' => $this->page_url]);

        // получаем верстку страницы со списком актеров
        return $html;
    }

    /**
     * получаем ссылки на профили актеров
     * @return bool
     * @throws Exception
     */
    public function getLinks() {

        // хтмл со всеми ссылками
        $Dom = HtmlDomParser::str_get_html($this->getPage());

        foreach ($Dom->find('a') as $link) {
            if (preg_match('~\/name\/nm\d+~i', $link->href) && strlen($link->href) == 15) {
                // пропускаем повторяющиеся
                if (in_array('https://www.imdb.com'.$link->href, $this->actor_links, true)) {
                    continue;
                }

                // актеры
                $this->actor_links[] = 'https://www.imdb.com'.$link->href;
            }
        }

        if (empty($this->actor_links)) {
            throw new Exception('Empty actor_links list!');
        }

        return true;
    }

    /**
     * ХТМЛ код главной страницы со списком актеров
     * @param $url
     * @return bool|string
     */
    public function curlQuery($url) {
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 5);
        $ip=rand(0,255).'.'.rand(0,255).'.'.rand(0,255).'.'.rand(0,255);
        curl_setopt($ch, CURLOPT_HTTPHEADER, array("REMOTE_ADDR: $ip", "HTTP_X_FORWARDED_FOR: $ip"));
        curl_setopt($ch, CURLOPT_USERAGENT, "Mozilla/".rand(3,5).".".rand(0,3)." (Windows NT ".rand(3,5).".".rand(0,2)."; rv:2.0.1) Gecko/20100101 Firefox/".rand(3,5).".0.1");
        $html = curl_exec($ch);
        curl_close($ch);

        return $html;
    }

    /**
     * Получение ХТМЛ кода всех 50 акк-ов актеров сразу
     * посколько ресурсузатратная операция возпользуемся
     * curl_multi_init и выполним в 1 запрос
     * @return array
     * @throws Exception
     */
    public function parseActor() {
        if (empty($this->actor_links)) {
            $this->getLinks();
        }

        $multiCurl = [];
        $result = [];

        $mh = curl_multi_init();

        foreach ($this->actor_links as $url) {
            $multiCurl[$url] = curl_init();
            curl_setopt($multiCurl[$url], CURLOPT_URL, $url);
            curl_setopt($multiCurl[$url], CURLOPT_HEADER,0);
            curl_setopt($multiCurl[$url], CURLOPT_CONNECTTIMEOUT, 5);
            $ip=rand(0,255).'.'.rand(0,255).'.'.rand(0,255).'.'.rand(0,255);
            curl_setopt($multiCurl[$url], CURLOPT_HTTPHEADER, array("REMOTE_ADDR: $ip", "HTTP_X_FORWARDED_FOR: $ip"));
            curl_setopt($multiCurl[$url], CURLOPT_USERAGENT, "Mozilla/".rand(3,5).".".rand(0,3)." (Windows NT ".rand(3,5).".".rand(0,2)."; rv:2.0.1) Gecko/20100101 Firefox/".rand(3,5).".0.1");
            // фиксит получение пустого результата
            curl_setopt($multiCurl[$url], CURLOPT_AUTOREFERER, true);
            curl_setopt($multiCurl[$url], CURLOPT_RETURNTRANSFER, 1);
            curl_setopt($multiCurl[$url], CURLOPT_FOLLOWLOCATION, 1);
            curl_setopt($multiCurl[$url], CURLOPT_VERBOSE, 1);

            curl_multi_add_handle($mh, $multiCurl[$url]);
        }

        $index=null;

        do {
            curl_multi_exec($mh,$index);
        } while($index > 0);

        foreach($multiCurl as $ch) {
            $result[] = curl_multi_getcontent($ch);
            curl_multi_remove_handle($mh, $ch);
        }
        curl_multi_close($mh);

        // html код всех страниц
        return $result;
    }

    /**
     * Достаем нужные данные и записываем в базу
     * @return array
     * @throws Exception
     */
    public function parseData() {

        $actors_html = $this->parseActor();

        // готовый результат для вывода в parse.blade.php
        $compile_data = [];

        foreach ($actors_html as $key => $actor_page) {

            $Dom = HtmlDomParser::str_get_html($actor_page);

            $name       = $Dom->find('h1[class=header] span', 0);
            $photo      = $Dom->find('img[id=name-poster]', 0);
            $born_date  = $Dom->find('div[id=name-born-info] time');
            $born_place = $Dom->find('div[id=name-born-info] a');
            $mini_bio   = $Dom->find('div[class=name-trivia-bio-text] div');
            $films      = '';

            foreach ($Dom->find('div[class=knownfor-title-role] a') as $item) {
                $films .= $item->getAttribute('title').', ';
            }

            $compile_data[$key]['name'] = $name->innertext();
            $compile_data[$key]['photo'] = $photo->getAttribute('src');
            $compile_data[$key]['bio'] = '';
            $compile_data[$key]['films'] = rtrim($films, ',');

            foreach ($mini_bio as $item) {
                $compile_data[$key]['bio'] .= $item->innertext();
            }

            if (strlen($compile_data[$key]['bio']) > 100) {
                $link = str_replace('https://www.imdb.com','', $this->actor_links[$key]);
                $compile_data[$key]['bio'] = "<a href=\"https://www.imdb.com{$link}/bio?ref_=nm_ov_bio_sm\">See full bio...</a>";
            }

            $compile_data[$key]['born'] = '';

            // дата
            foreach ($born_date as $date) {
                $compile_data[$key]['born'] .= !empty($date->getAttribute('datetime'))
                    ? $date->getAttribute('datetime')
                    : '';
            }

            // место рождения
            foreach ($born_place as $place) {
                $compile_data[$key]['born'] .= !empty($place->innertext())
                    ? ', '.$place->innertext()
                    : '';
            }

            $compile_data[$key]['born'] = !empty($compile_data[$key]['born']) ? $compile_data[$key]['born'] : '&mdash;';

            /*
             * пишем в базу
             * ID актера возьмем по его URL для удобства
             */
            $id = trim(str_replace('https://www.imdb.com/name/nm','', $this->actor_links[$key]), '0/');

            DB::table('actors')->insert([
                'id'            => $id,
                'name'          => $compile_data[$key]['name'],
                'photo_link'    => $compile_data[$key]['photo'],
                'bio'           => $compile_data[$key]['bio'],
                'born'          => $compile_data[$key]['born'],
                'films'         => $compile_data[$key]['films'],
                'created_at'    => Carbon::now()
            ]);

            $Dom->clear();
            unset($Dom);
        }

        return $compile_data;

    }
}
