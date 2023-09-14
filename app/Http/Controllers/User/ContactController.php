<?php

namespace App\Http\Controllers\User;

use App\Models\Contact;
use App\Mail\ContactMail;
use Illuminate\Http\Request;
use Mews\Purifier\Facades\Purifier;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Mail;

class ContactController extends Controller
{

    public function index()
    {
        return view('front.contact-us.contact_us');
    }

    public function store(Request $request)
    {
        return redirect()->to('/');
        // Form validation
        // $this->validate($request, [
        //     'name' => 'required|min:3',
        //     'email' => 'required|email',
        //     'subject' => 'required|min:4',
        //     'content' => 'required|min:10',
        // ]);
        //  Store data in database
        // $data = new Contact();
        // $data->name = Purifier::clean($request->name);
        // $data->email = Purifier::clean($request->email);
        // $data->subject = Purifier::clean($request->subject);
        // $data->content = Purifier::clean($request->content);
        // $data->save();

        // try {
        //     Mail::to('nazmulhasan3615@gmail.com')->send(new ContactMail($data));
        //     return back()->with('success', 'Great! We have received your message and would like to thank you for writing to us.');

        // } catch (Exception $e) {
        //     return back()->with('success', 'Sorry! Please try again latter');
        // }
    }

}
