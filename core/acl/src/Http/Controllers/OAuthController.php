<?php

namespace Botble\ACL\Http\Controllers;

use Botble\ACL\Forms\OAuthClientForm;
use Botble\ACL\Http\Requests\OAuthClientRequest;
use Botble\ACL\Tables\OAuthClientTable;
use Botble\Base\Forms\FormBuilder;
use Botble\Base\Http\Controllers\BaseController;
use Botble\Base\Tables\TableBuilder;
use Laravel\Passport\ClientRepository;
use Illuminate\Http\Request;

class OAuthController extends BaseController
{
    /**
     * @param Request $request
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\Http\JsonResponse|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getClients(Request $request, TableBuilder $tableBuilder)
    {
        page_title()->setTitle(__('OAuth Clients'));
        $table = $tableBuilder->create(OAuthClientTable::class);

        if ($request->expectsJson()) {
            return $table->renderTable();
        }

        return view('core.acl::oauth.clients', compact('table'));
    }

    /**
     * @return string
     * @author Sang Nguyen
     */
    public function getCreateClient(FormBuilder $builder)
    {
        /**
         * @var OAuthClientForm $form
         */
        $form = $builder->create(OAuthClientForm::class, ['url' => route('oauth.clients.create.post')]);
        $form->setTitle(__('Create new client'));
        return $form->setUseInlineJs(true)->renderForm();
    }

    /**
     * @param OAuthClientRequest $request
     * @param ClientRepository $clientRepository
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postCreateClient(OAuthClientRequest $request, ClientRepository $clientRepository)
    {
        $clientRepository->createPasswordGrantClient(null, $request->input('name'), 'http://localhost');
        return redirect()->back()->with('success_msg', __('Create new client successfully!'));
    }

    /**
     * @param $id
     * @param ClientRepository $clientRepository
     * @param FormBuilder $builder
     * @return string
     * @author Sang Nguyen
     */
    public function getEditClient($id, ClientRepository $clientRepository, FormBuilder $builder)
    {
        $client = $clientRepository->find($id);
        /**
         * @var OAuthClientForm $form
         */
        $form = $builder->create(OAuthClientForm::class, ['url' => route('oauth.clients.edit.post', $client->id)]);
        $form->setModel($client)->setTitle(__('Edit client ":name"', ['name' => $client->name]));
        return $form->renderForm();
    }

    /**
     * @param $id
     * @param OAuthClientRequest $request
     * @param ClientRepository $clientRepository
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postEditClient($id, OAuthClientRequest $request, ClientRepository $clientRepository)
    {
        $client = $clientRepository->find($id);
        if (!$client) {
            abort(404);
        }
        $clientRepository->update($client, $request->input('name'), $client->redirect);
        return redirect()->back()->with('success_msg', __('Updated client successfully!'));
    }

    /**
     * @param $id
     * @param ClientRepository $clientRepository
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @author Sang Nguyen
     */
    public function getDeleteClient($id, ClientRepository $clientRepository)
    {
        $client = $clientRepository->find($id);
        return view('core.acl::oauth.delete', compact('client'));
    }

    /**
     * @param $id
     * @param ClientRepository $clientRepository
     * @return \Illuminate\Http\RedirectResponse
     * @author Sang Nguyen
     */
    public function postDeleteClient($id, ClientRepository $clientRepository)
    {
        $client = $clientRepository->find($id);
        if (!$client) {
            abort(404);
        }
        $clientRepository->delete($client);
        return redirect()->back()->with('success_msg', __('Deleted client successfully!'));
    }
}
