<?php

use Illuminate\Database\Seeder;
use App\Reservation;


class ReservationSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $json = File::get("./database/data/reservations.json");

        $reservations = json_decode($json);

        foreach ($reservations as $key => $value) {
            Reservation::create([
                'id' => $value->id,
                'user_plan_id' => $value->user_plan_id,
                'route_id' => $value->route_id,
                'track_id' => $value->track_id,
                'reservation_start' => $value->reservation_start,
                'reservation_end' => $value->reservation_end,
                'route_stop_origin_id' => $value->route_stop_origin_id,
                'route_stop_destination_id' => $value->route_stop_destination_id,
                'created_at' => $value->created_at,
                'updated_at' => $value->updated_at,
                'deleted_at' => $value->deleted_at
            ]);
        }
    }
}
