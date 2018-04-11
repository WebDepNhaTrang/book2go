<?php

namespace Botble\Base\Traits;

use Auth;
use Botble\ACL\Repositories\Interfaces\RoleInterface;
use Botble\ACL\Repositories\Interfaces\UserInterface;
use Illuminate\Foundation\Testing\DatabaseMigrations;

trait PrepareTestDataTrait
{
    use DatabaseMigrations;

    public function setUp()
    {
        parent::setUp();
        $this->prepareAuthorize();
    }

    /**
     * @return mixed
     */
    protected function prepareAuthorize()
    {
        $user = $this->app->make(UserInterface::class)->getModel();
        $user->first_name = 'John';
        $user->last_name = 'Smith';
        $user->email = 'john.smith@gmail.com';
        $user->username = 'john.smith';
        $user->password = bcrypt('123456789');
        $user->super_user = 1;
        $user->manage_supers = 1;
        $user->profile_image = config('core.acl.general.avatar.default');

        $this->app->make(UserInterface::class)->createOrUpdate($user);
        acl_activate_user($user);
        Auth::login($user);

        $this->app->make(RoleInterface::class)->create([
            'name' => 'Administrators',
            'slug' => 'administrators',
            'description' => 'Highest role in the system',
            'created_by' => $user->id,
            'updated_by' => $user->id,
            'is_default' => 1,
        ]);

        $this->artisan('theme:activate', ['name' => array_first(scan_folder(public_path('themes')))]);

        return $user;
    }
}