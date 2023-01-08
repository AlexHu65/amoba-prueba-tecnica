<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class Reservation extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'user_plan_id' => $this->user_plan_id,
            'route_id' => $this->route_id,
            'track_id' => $this->track_id,
            'reservation_start' => $this->reservation_start,
            'reservation_end' => $this->reservation_end
        ];

    }
}
