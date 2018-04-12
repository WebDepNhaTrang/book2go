<?php

namespace Theme\Book2go\Http\Controllers;

use Illuminate\Routing\Controller;
use Theme;

class Book2goController extends Controller
{

    /**
     * @return \Response
     */
    public function test()
    {
        return Theme::scope('test')->render();
    }
}