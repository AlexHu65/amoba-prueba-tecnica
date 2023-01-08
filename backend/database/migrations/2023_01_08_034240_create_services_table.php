<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateServicesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('services', function (Blueprint $table) {
            $table->id();
            $table->string('external_id')->nullable();
            $table->string('external_budget_id')->nullable();
            $table->string('external_route_id')->nullable();
            $table->string('track_id')->nullable();
            $table->string('name')->nullable();
            $table->string('notes')->nullable();
            $table->timestamp('timestamp', 0)->nullable();
            $table->longText('arrival_address')->nullable();
            $table->timestamp('arrival_timestamp', 0)->nullable();
            $table->longText('departure_address')->nullable();
            $table->timestamp('departure_timestamp', 0)->nullable();
            $table->integer('capacity');
            $table->integer('confirmed_pax_count')->default(0);
            $table->timestamp('reported_departure_timestamp', 0)->nullable();
            $table->integer('reported_departure_kms')->nullable();
            $table->timestamp('reported_arrival_timestamp', 0)->nullable();
            $table->integer('reported_arrival_kms')->nullable();
            $table->integer('reported_vehicle_plate_number')->nullable();
            $table->string('status')->nullable();
            $table->longText('status_info')->nullable();
            $table->tinyInteger('reprocess_status')->default(0);
            $table->tinyInteger('return')->default(0);
            $table->timestamp('created', 0)->nullable();
            $table->timestamp('modified', 0)->nullable();
            $table->string('synchronized_downstream')->nullable();
            $table->string('synchronized_upstream')->nullable();
            $table->integer('province_id')->nullable();
            $table->tinyInteger('sale_tickets_drivers')->default(0);
            $table->longText('notes_drivers')->nullable();
            $table->longText('itinerary_drivers')->nullable();
            $table->longText('cost_if_externalized')->nullable();
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
        Schema::dropIfExists('services');
    }
}
