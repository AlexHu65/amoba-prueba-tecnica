<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateRouteDataTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('routes_data', function (Blueprint $table) {
            $table->id();
            $table->foreignId('route_id')->constrained('routes');
            $table->foreignId('calendar_id')->constrained('calendars');
            $table->string('vinculation_route')->nullable();
            $table->tinyInteger('route_circular')->default(0);
            $table->timestamp('date_init', 0)->nullable();
            $table->timestamp('date_finish', 0)->nullable();
            $table->tinyInteger('mon')->default(0);
            $table->tinyInteger('tue')->default(0);
            $table->tinyInteger('wed')->default(0);
            $table->tinyInteger('thu')->default(0);
            $table->tinyInteger('fri')->default(0);
            $table->tinyInteger('sat')->default(0);
            $table->tinyInteger('sun')->default(0);
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
        Schema::dropIfExists('routes_data');
    }
}
