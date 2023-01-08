<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

//Resources
use App\Http\Resources\Routes as RouteResource;
use App\Http\Resources\DisabledDays as DisabledDayResource;
use App\Http\Resources\Reservation as ReservationResource;

//Collections
use App\Http\Resources\DisabledDayCollection;
use App\Http\Resources\ReservationCollection;

//Models
use App\Route as Ruta;
use App\DisabledDay;
use App\Reservation;

Route::middleware('api')->get('/routes', function (Request $request) {
    return RouteResource::collection(Ruta::with('routeData')->get());
});

Route::middleware('api')->get('/routes/{id}', function (Request $request) {
    return RouteResource::collection(Ruta::find($request->id));
});

Route::middleware('api')->get('/routes/{start_timestamp}/{end_timestamp}', function (Request $request) {
    $dateStart = DateTime::createFromFormat('d-m-Y', $request->start_timestamp)->format('Y-m-d');
    $dateEnd = DateTime::createFromFormat('d-m-Y', $request->end_timestamp)->format('Y-m-d');
    return RouteResource::collection(Ruta::whereBetween('start_timestamp', [$dateStart, $dateEnd])->get());
});

//Rutas desabilitadas por dia
Route::middleware('api')->get('/routes/disabled/{day}', function (Request $request) {
    $date = DateTime::createFromFormat('d-m-Y', $request->day)->format('Y-m-d');
    return new DisabledDayResource(DisabledDay::where(['day' => $date])->first());
});

//Fechas reservadas por dia
Route::middleware('api')->get('/routes/reservations/{day}', function (Request $request) {
    $date = DateTime::createFromFormat('d-m-Y', $request->day)->format('Y-m-d');
    return new ReservationResource(Reservation::where(['reservation_start' => $date])->first());
});


//Rutas desabilitadas por rango de fecha
Route::middleware('api')->get('/routes/disabled/{start}/{end}', function (Request $request) {
    $dateStart = DateTime::createFromFormat('d-m-Y', $request->start)->format('Y-m-d');
    $dateEnd = DateTime::createFromFormat('d-m-Y', $request->end)->format('Y-m-d');
    return new DisabledDayCollection(DisabledDay::with('calendar')->whereBetween('day', [$dateStart, $dateEnd])->get());
});

//Fechas reservadas por rango
Route::middleware('api')->get('/routes/reservations/{start}/{end}', function (Request $request) {
    $dateStart = DateTime::createFromFormat('d-m-Y', $request->start)->format('Y-m-d');
    $dateEnd = DateTime::createFromFormat('d-m-Y', $request->end)->format('Y-m-d');
    return new ReservationCollection(Reservation::whereBetween('reservation_start', [$dateStart, $dateEnd])->get());
});

Route::middleware('api')->get('/routes/{id}', function (Request $request) {
    return new RouteResource(Ruta::find($request->id));
});
