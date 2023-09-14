<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class ContactMail extends Mailable
{
    use Queueable, SerializesModels;
    public $data = [];

    public function __construct($data)
    {
        $this->data = $data;
    }

    public function build()
    {
        return $this->from('test@gmail.com', 'Testing')
            ->subject('Contact US - ' . $this->data['subject'])
            ->view('front.contact-us.email_contact')->with('data', $this->data);
    }
}
