<?php

return [
    [
        'name' => 'Events',
        'flag' => 'events.list',
    ],
    [
        'name' => 'Create',
        'flag' => 'events.create',
        'parent_flag' => 'events.list',
    ],
    [
        'name' => 'Edit',
        'flag' => 'events.edit',
        'parent_flag' => 'events.list',
    ],
    [
        'name' => 'Delete',
        'flag' => 'events.delete',
        'parent_flag' => 'events.list',
    ],
];