<?php

use Illuminate\Database\Seeder;
use App\Calendar;
use File as File;

class CalendarSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $json = File::get("./database/data/calendar.json");

        $calendars = json_decode($json);

        foreach ($calendars as $key => $value) {
            Calendar::create([
                'id' => $value->id,
                'name' => $value->name,
                'updated_at' => $value->updated_at,
                'created_at' => $value->updated_at,
            ]);
        }
    }
}
