<?php

use Illuminate\Database\Seeder;
use App\RouteData;
use File as File;

class RoutesDataSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $json = File::get("./database/data/route_data.json");

        $routes_data = json_decode($json);

        foreach ($routes_data as $key => $value) {
            RouteData::create([
                'id' => $value->id,
                'route_id' => $value->route_id,
                'calendar_id' => $value->calendar_id,
                'vinculation_route' => $value->vinculation_route,
                'route_circular' => $value->route_circular,
                'date_init' => $value->date_init,
                'date_finish' => $value->date_finish,
                'mon' => $value->mon,
                'tue' => $value->tue,
                'wed' => $value->wed,
                'thu' => $value->thu,
                'fri' => $value->fri,
                'sat' => $value->sat,
                'sun' => $value->sun,
                'updated_at' => $value->updated_at,
                'created_at' => $value->created_at,
            ]);
        }
    }
}
