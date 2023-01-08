<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUserPlansTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('user_plans', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->constrained('users');
            $table->foreignId('currency_id')->constrained('currencies');
            $table->integer('next_user_plan_id')->nullable();
            $table->timestamp('start_timestamp', 0)->nullable();
            $table->timestamp('end_timestamp', 0)->nullable();
            $table->timestamp('renewal_timestamp', 0)->nullable();
            $table->double('renewal_price');
            $table->tinyInteger('requires_invoice')->default(0);
            $table->unsignedInteger('status');
            $table->timestamp('created', 0)->nullable();
            $table->timestamp('modified', 0)->nullable();
            $table->tinyInteger('financiation')->default(0);
            $table->tinyInteger('status_financiation')->default(0);
            $table->string('language');
            $table->string('nif')->nullable();
            $table->string('business_name')->nullable();
            $table->tinyInteger('pending_payment')->default(0);
            $table->timestamp('date_max_payment', 0)->nullable();
            $table->timestamp('proxim_start_timestamp', 0)->nullable();
            $table->timestamp('proxim_end_timestamp', 0)->nullable();
            $table->timestamp('proxim_renewal_timestamp', 0)->nullable();
            $table->double('proxim_renewal_price')->nullable();
            $table->double('credits_return', 8, 2)->nullable();
            $table->integer('company_id');
            $table->tinyInteger('cancel_employee')->default(0);
            $table->tinyInteger('force_renovation')->default(0);
            $table->timestamp('date_canceled', 0)->nullable();
            $table->double('amount_confirm_canceled')->nullable();
            $table->double('credit_confirm_canceled', 8, 2)->nullable();
            $table->integer('cost_center_id');
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
        Schema::dropIfExists('user_plans');
    }
}
