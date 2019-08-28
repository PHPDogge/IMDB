<?php

namespace App\Http\Controllers;

use App\Parser;

class ParseController extends Controller
{
    public function index() {
        // скрипту нужно время 1-2 мин
        set_time_limit(300);
        ini_set('memory_limit', '-1');

        $Parser = new Parser();
        $Parser->getLinks();
        $actors = $Parser->parseData();

        return view('parse', ['actors' => $actors]);
    }
}
