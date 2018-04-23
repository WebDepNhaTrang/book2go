<?php

namespace Botble\Base\Events;

use Illuminate\Queue\SerializesModels;

class SendMailEvent extends Event
{
    use SerializesModels;

    /**
     * @var string
     */
    public $content;

    /**
     * @var string
     */
    public $title;

    /**
     * @var array
     */
    public $args;

    /**
     * @var string
     */
    public $view;

    /**
     * SendMailEvent constructor.
     * @param $content
     * @param $title
     * @param $args
     * @author Sang Nguyen
     */
    public function __construct($content, $title, $args, $view = null)
    {
        $this->content = $content;
        $this->title = $title;
        $this->args = $args;
        $this->view = $view;
    }

    /**
     * Get the channels the event should be broadcast on.
     *
     * @return array
     * @author Sang Nguyen
     */
    public function broadcastOn()
    {
        return [];
    }
}
