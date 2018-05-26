<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateLockServicerTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('lock_servicers', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name', 120);
            $table->text('description')->nullable();
            $table->date('start_date')->nullable();
            $table->date('end_date')->nullable();
            $table->tinyInteger('status')->unsigned()->default(1);
            $table->integer('user_id')->unsigned()->index()->references('id')->on('users');
            $table->integer('service_type_id')->references('id')->on('service_types')->nullable()->default(0);
            $table->integer('servicer_id')->references('id')->on('servicers')->nullable()->default(0);
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
        Schema::dropIfExists('lock_servicers');
    }
}
