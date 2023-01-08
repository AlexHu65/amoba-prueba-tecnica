<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('first_name', 50)->nullable();
            $table->string('last_name' , 50)->nullable();
            $table->string('phone_number',50)->nullable();
            $table->longText('picture')->nullable();
            $table->string('email' , 50);
            $table->string('password')->nullable();
            $table->rememberToken();
            $table->timestamp('last_online', 0)->nullable();
            $table->string('verification_code')->nullable();
            $table->string('new_email')->nullable();
            $table->string('status')->nullable();
            $table->tinyInteger('first')->default(0);
            $table->timestamp('last_accept_date', 0)->nullable();
            $table->timestamp('created', 0)->nullable();
            $table->timestamp('modified', 0)->nullable();
            $table->string('company_contact')->nullable();
            $table->double('credits', 8, 2)->nullable();
            $table->tinyInteger('first_trip')->default(0);
            $table->tinyInteger('incomplete_profile')->default(1);
            $table->tinyInteger('phone_verify')->default(0);
            $table->string('token_auto_login')->nullable();
            $table->string('user_vertical')->nullable();
            $table->integer('language_id')->default(0)->nullable();
            $table->tinyInteger('no_registered')->default(0);
            $table->timestamp('deleted_at', 0)->nullable();
            $table->timestamps();

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('users');
    }
}
