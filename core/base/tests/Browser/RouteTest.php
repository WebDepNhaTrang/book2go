<?php

namespace Botble\Base\Tests\Browser;

use Auth;
use Botble\Base\Traits\PrepareTestDataTrait;
use Laravel\Dusk\Browser;
use Tests\DuskTestCase;

class RouteTest extends DuskTestCase
{
    use PrepareTestDataTrait;

    /**
     * A basic functional test example.
     *
     * @return void
     * @throws \Throwable
     */
    public function testGetRoutes()
    {
        $user = Auth::user();

        $this->browse(function (Browser $browser) use ($user) {
            $browser->loginAs($user->id);

            $urls = [
                route('system.info'),
                route('system.cache'),
                route('plugins.list'),
                route('public.sitemap'),
                route('public.feed.json'),
            ];

            foreach ($urls as $url) {
                $response = $this->call('GET', $url);
                $this->assertEquals(200, $response->status(), $url . ' did not return a 200');
            }
        });
    }
}
