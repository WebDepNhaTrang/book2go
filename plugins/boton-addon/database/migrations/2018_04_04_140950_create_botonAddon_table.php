<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateBotonAddonTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('posts', function (Blueprint $table) {
            $table->string('post_type', 30)->nullable();
            $table->string('template', 60)->nullable();
            $table->string('other_image', 255)->nullable();
            $table->integer('order')->nullable();
            $table->text('other_content')->nullable();
            $table->tinyInteger('book_now')->default(0);
        });

        Schema::table('categories', function (Blueprint $table) {
            $table->string('category_type', 30)->nullable();
            $table->string('template', 60)->nullable();
            $table->text('content')->nullable();
            $table->string('image', 255)->nullable();
            $table->string('other_image', 255)->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('posts', function (Blueprint $table) {
            $table->dropColumn('post_type');
            $table->dropColumn('template');
            $table->dropColumn('other_image');
            $table->dropColumn('order');
            $table->dropColumn('other_content');
            $table->dropColumn('book_now');
        });

        Schema::table('categories', function (Blueprint $table) {
            $table->dropColumn('category_type');
            $table->dropColumn('template');
            $table->dropColumn('content');
            $table->dropColumn('image');
            $table->dropColumn('other_image');
        });
    }
}
