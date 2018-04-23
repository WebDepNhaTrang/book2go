<?php

namespace Botble\Base\Supports;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class EmailAbstract extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * @var string
     */
    public $content;

    /**
     * @var string
     */
    public $subject;

    /**
     * @var array
     */
    public $data;

    /**
     * @var string
     */
    public $view;

    /**
     * Create a new message instance.
     *
     * @param $content
     * @param $subject
     * @param array $data
     * @author Sang Nguyen
     */
    public function __construct($content, $subject, $data = [], $view = null)
    {
        $this->content = $content;
        $this->subject = $subject;
        $this->data = $data;
        $this->view = $view;
    }

    /**
     * Build the message.
     *
     * @return $this
     * @author Sang Nguyen
     */
    public function build()
    {
        if($this->view){
            $view = $this->view;
        }else{
            $view = config('core.base.general.email_template');
        }
        $email = $this->from(setting('email_from_address'),setting('email_from_name'))
            ->subject($this->subject)
            ->view($view)
            ->with(['content' => $this->content]);

        $attachments = array_get($this->data, 'attachments');
        if (!empty($attachments)) {
            if (!is_array($attachments)) {
                $attachments = [$attachments];
            }
            foreach ($attachments as $file) {
                $email->attach($file);
            }
        }

        return $email;
    }
}
