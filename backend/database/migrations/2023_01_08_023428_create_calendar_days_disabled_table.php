<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCalendarDaysDisabledTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('disabled_days', function (Blueprint $table) {
            $table->id();
            $table->foreignId('calendar_id')->constrained('calendars');
            $table->timestamp('day', 0);
            $table->tinyInteger('enabled');
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
        Schema::dropIfExists('disabled_days');
    }
}
