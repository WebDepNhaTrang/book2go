<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBookingTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('bookings', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('member_id')->unsigned()->index()->references('id')->on('members')->onDelete('cascade');
            $table->tinyInteger('status')->unsigned()->default(1)->nullable();
            $table->date('checkin')->nullable();
            $table->date('checkout')->nullable();
            $table->string('payment', 120)->nullable();
            $table->decimal('subtotal',20,2)->nullable();
            $table->decimal('discount',20,2)->nullable();
            $table->decimal('tax',20,2)->nullable();
            $table->decimal('total',20,2)->nullable();
            $table->integer('servicer_id')->unsigned()->index()->references('id')->on('servicers')->onDelete('cascade');
            $table->string('servicer_name', 400)->nullable();
            $table->integer('amount_adults')->nullable();
            $table->integer('amount_children')->nullable();
            $table->integer('total_of_servicer')->nullable();
            $table->string('fullname', 200)->nullable();
            $table->string('email', 200)->nullable();
            $table->string('phone', 100)->nullable();
            $table->string('address', 400)->nullable();
            $table->text('requirements')->nullable();
            $table->text('notes')->nullable();
            $table->integer('user_id')->unsigned()->index()->references('id')->on('users')->onDelete('cascade');
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
        Schema::dropIfExists('bookings');
    }
}
