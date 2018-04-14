<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateServicerTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('service_types', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name', 120);
            $table->text('description')->nullable();
            $table->text('content')->nullable();
            $table->tinyInteger('status')->unsigned()->default(1);
            $table->integer('user_id')->unsigned()->index()->references('id')->on('users');
            $table->tinyInteger('featured')->default(0);
            $table->tinyInteger('order')->default(0);
            $table->string('image', 255)->nullable();
            $table->softDeletes();
            $table->timestamps();
            $table->engine = 'InnoDB';
        });

        Schema::create('servicers', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name', 120);
            $table->tinyInteger('status')->unsigned()->default(1);
            $table->string('description', 500)->nullable();
            $table->text('content')->nullable();
            $table->integer('user_id')->references('id')->on('users');
            $table->string('image', 255)->nullable();
            $table->string('price', 20,2)->nullable();
            $table->string('price_children', 20,2)->nullable();
            $table->integer('adults')->nullable();
            $table->integer('children')->nullable();
            $table->string('format_type', 30)->nullable();
            $table->integer('service_type_id')->references('id')->on('service_types')->nullable()->default(0);
            $table->tinyInteger('order')->default(0);
            $table->integer('number_of_servicer')->nullable();
            $table->softDeletes();
            $table->timestamps();
            $table->engine = 'InnoDB';
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('service_types');
        Schema::dropIfExists('services');
    }
}
