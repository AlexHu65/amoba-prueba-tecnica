<?php

use Illuminate\Database\Seeder;
use App\Currency;

class CurrencySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $json = File::get("./database/data/currencies.json");

        $currencies = json_decode($json);

        foreach ($currencies as $key => $value) {
            Currency::create([
                'id' => $value->id,
                'name' => $value->name,
                'code' => $value->code,
                'country_code' => $value->country_code
            ]);
        }
    }
}
