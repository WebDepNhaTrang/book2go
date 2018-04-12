<?php

namespace Botble\ACL\Tests\Browser;

use Auth;
use Botble\ACL\Repositories\Interfaces\RoleInterface;
use Botble\ACL\Repositories\Interfaces\UserInterface;
use Botble\Base\Traits\PrepareTestDataTrait;
use Faker\Factory;
use Laravel\Dusk\Browser;
use Tests\DuskTestCase;

class AclTest extends DuskTestCase
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
            $browser->loginAs($user->id)
                ->visit(route('dashboard.index'))
                ->visit(route('admin.theme', ['theme' => 'black']))
                ->assertRouteIs('dashboard.index')
                ->visit(route('admin.language', ['slug' => 'en']))
                ->assertRouteIs('dashboard.index');

            $browser->visit(route('users.list'))
                ->assertDontSee('Tables warning');

            $faker = Factory::create();
            $browser->visit(route('users.create'))
                ->type('first_name', $faker->firstName)
                ->type('last_name', $faker->lastName)
                ->type('username', $faker->userName)
                ->type('email', $faker->email)
                ->type('password', '123456')
                ->type('password_confirmation', '123456')
                ->press(trans('core.base::forms.save'))
                ->assertRouteIs('users.list');

            $urls = [
                route('users.list'),
                route('users.create'),
                route('user.profile.view', $user->id),
                route('users-supers.list'),
                route('roles.list'),
                route('roles.create'),
                route('roles.list.json'),
            ];

            foreach ($urls as $url) {
                $response = $this->call('GET', $url);
                $this->assertEquals(200, $response->status(), $url . ' did not return a 200');
            }

            $browser->visit(route('access.logout'))->assertRouteIs('access.login');
        });
    }

    /**
     * @throws \Exception
     * @throws \Throwable
     * @author Sang Nguyen
     */
    public function testCanLogin()
    {
        if (Auth::check()) {
            Auth::logout();
        }
        $user = $user = $this->app->make(UserInterface::class)->getFirstBy(['email' => 'john.smith@gmail.com']);
        $this->browse(function (Browser $browser) use ($user) {
            $browser->visit(route('access.login'))
                ->type('username', $user->username)
                ->type('password', '123456789')
                ->click('button[type=submit]')
                ->assertRouteIs('dashboard.index');
        });
    }

    /**
     * @throws \Exception
     * @throws \Throwable
     * @author Sang Nguyen
     */
    public function testCanLogout()
    {
        if (!Auth::check()) {
            $user = $user = $this->app->make(UserInterface::class)->getFirstBy(['email' => 'john.smith@gmail.com']);
            Auth::login($user);
        }

        $user = Auth::user();

        $this->browse(function (Browser $browser) use ($user) {
            $browser->loginAs($user->id)
                ->visit(route('dashboard.index'))
                ->assertRouteIs('dashboard.index')
                ->click('.dropdown-user')
                ->waitFor('.btn-logout')
                ->click('.btn-logout')
                ->assertRouteIs('access.login');
        });
    }
}
