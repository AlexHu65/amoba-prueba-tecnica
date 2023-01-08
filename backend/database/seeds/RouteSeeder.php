<?php

use Illuminate\Database\Seeder;
use App\Route;
use File as File;

class RouteSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        $json = File::get("./database/data/routes.json");

        $routes = json_decode($json);

        foreach ($routes as $key => $value) {
            Route::create([
                'id' => $value->id,
                'external_id' => $value->external_id,
                'invitation_code' => $value->invitation_code,
                'title' => $value->title,
                'start_timestamp' => $value->start_timestamp,
                'end_timestamp' => $value->end_timestamp,
            ]);
        }
    }
}
