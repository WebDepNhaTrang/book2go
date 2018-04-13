<?php

namespace Botble\Contact\Http\Controllers;

use Botble\Contact\Http\Requests\ContactRequest;
use Botble\Contact\Repositories\Interfaces\ContactInterface;
use EmailHandler;
use Exception;
use Illuminate\Routing\Controller;

class PublicController extends Controller
{
    /**
     * @var ContactInterface
     */
    protected $contactRepository;

    /**
     * @param ContactInterface $contactRepository
     * @author Sang Nguyen
     */
    public function __construct(ContactInterface $contactRepository)
    {
        $this->contactRepository = $contactRepository;
    }

    /**
     * @param ContactRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     * @throws \Throwable
     */
    public function postSendContact(ContactRequest $request)
    {
        try {
            $contact = $this->contactRepository->getModel();
            $contact->fill($request->input());
            $this->contactRepository->createOrUpdate($contact);
            $data = [
                'name' => $contact->name,
                'email' => $contact->email,
                'phone' => $contact->phone,
                'address' => $contact->address,
                'content' => $contact->content,
                'to' => setting('admin_email'),
            ];

            EmailHandler::send(view('plugins.contact::emails.contact', $data)->render(), setting('contact_email_subject', trans('plugins.contact::contact.email.title')), $data);

            return redirect()->back()->with('success_msg', trans('plugins.contact::contact.email.success'));
        } catch (Exception $ex) {
            info($ex->getMessage());
            return redirect()->back()->with('error_msg', trans('plugins.contact::contact.email.failed'));
        }
    }
}
