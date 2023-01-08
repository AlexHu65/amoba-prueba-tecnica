<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateReservationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('reservations', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_plan_id')->constrained('user_plans');
            $table->foreignId('route_id')->constrained('routes');
            $table->integer('track_id')->nullable();
            $table->timestamp('reservation_start', 0)->nullable();
            $table->timestamp('reservation_end', 0)->nullable();
            $table->integer('route_stop_origin_id')->nullable();
            $table->integer('route_stop_destination_id')->nullable();
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
        Schema::dropIfExists('reservations');
    }
}
