<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddColumnServicerAndCreatePromotionTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('promotions', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name', 120)->nullable();
            $table->text('description')->nullable();
            $table->text('content')->nullable();
            $table->string('code', 100)->index()->nullable();
            $table->datetime('start_date')->nullable();
            $table->datetime('end_date')->nullable();
            $table->decimal('cost', 10, 2)->nullable();
            $table->integer('quantity')->nullable();
            $table->integer('quantity_used')->nullable();
            $table->tinyInteger('status')->unsigned()->default(1);
            $table->integer('user_id')->unsigned()->index()->references('id')->on('users');
            $table->string('image', 255)->nullable();
            $table->softDeletes();
            $table->timestamps();
            $table->engine = 'InnoDB';
        });

        Schema::create('promotion_servicer', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('promotion_id')->unsigned()->index()->references('id')->on('promotions')->onDelete('cascade');
            $table->integer('reference_id')->unsigned()->index();
            $table->string('reference', 120)->nullable()->index();
            $table->softDeletes();
            $table->timestamps();
        });

        Schema::table('service_types', function (Blueprint $table) {
            $table->integer('star')->nullable();
            $table->string('lat_long', 200)->nullable();
            $table->string('address', 300)->nullable();
            $table->string('phone', 50)->nullable();
        });

        Schema::table('servicers', function (Blueprint $table) {
            $table->string('address', 300)->nullable();
            $table->decimal('price', 20,2)->nullable()->change();
            $table->decimal('price_children', 20,2)->nullable()->change();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('promotions');
        Schema::dropIfExists('promotion_servicer');
        Schema::table('service_types', function (Blueprint $table) {
            $table->dropColumn('star');
            $table->dropColumn('lat_long');
            $table->dropColumn('address');
            $table->dropColumn('phone');
        });
        Schema::table('servicers', function (Blueprint $table) {
            $table->dropColumn('address');
        });
    }
}
