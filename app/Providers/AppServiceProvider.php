<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;
use App\Models\ConfigHome;
class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Schema::defaultStringLength(191);
        Schema::defaultStringLength(191);
        $site_info = ConfigHome::where('type', 'site_info')->first();
        $site_info = json_decode($site_info->content);
        $orther = ConfigHome::where('type', 'other')->first();
        $orther = json_decode($orther->content);
        $social =  ConfigHome::where('type', 'social')->first();
        $social = json_decode($social->content);
        view()->share(compact('site_info', 'orther', 'social'));
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
