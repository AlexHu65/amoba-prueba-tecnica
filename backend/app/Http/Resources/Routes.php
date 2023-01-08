<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class Routes extends JsonResource
{
    /**
     * Transform the resource collection into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'title' => $this->title,
            'start_timestamp' => $this-> start_timestamp,
            'end_timestamp' => $this->end_timestamp,
            'frecuency' => $this->routeData,
            'reserved' => $this->reserved
        ];
    }
}
