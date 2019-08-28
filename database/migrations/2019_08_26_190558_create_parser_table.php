<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateParserTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('parser', function (Blueprint $table) {
            $table->increments('id');
            $table->timestamps();
            $table->string('last_parsed_url')->default('null');
            $table->integer('last_parsed_actor_group'); // по дефолту группы по 50 человек на странице
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('parser');
    }
}
