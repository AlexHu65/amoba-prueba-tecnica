<?php

use Illuminate\Database\Seeder;
use App\DisabledDay;
use File as File;

class DisabledDaysSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $json = File::get("./database/data/disabledDays.json");

        $disableds = json_decode($json);

        foreach ($disableds as $key => $value) {
            DisabledDay::create([
                'id' => $value->id,
                'calendar_id' => $value->calendar_id,
                'day' => $value->day,
                'enabled' => $value->enabled,
                'updated_at' => $value->updated_at,
                'created_at' => $value->created_at,
            ]);
        }
    }
}
