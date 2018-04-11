<?php

return [
    [
        'name' => 'BotonAddon',
        'flag' => 'botonAddon.list',
    ],
    [
        'name' => 'Create',
        'flag' => 'botonAddon.create',
        'parent_flag' => 'botonAddon.list',
    ],
    [
        'name' => 'Edit',
        'flag' => 'botonAddon.edit',
        'parent_flag' => 'botonAddon.list',
    ],
    [
        'name' => 'Delete',
        'flag' => 'botonAddon.delete',
        'parent_flag' => 'botonAddon.list',
    ],
];