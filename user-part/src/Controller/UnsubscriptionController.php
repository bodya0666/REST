<?php

namespace App\Controller;

use App\Entity\HttpRequestQuery;
use App\Form\UidType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Session\Session;
use Symfony\Component\Routing\Annotation\Route;

class UnsubscriptionController extends AbstractController
{
    /**
     * @Route("/unsubscription", name="unsubscription")
     */
    public function unsubscription(Request $request)
    {
        $form = $this->createForm(UidType::class);
        $form->handleRequest($request);
        $response = null;

        if ($form->isSubmitted() && $form->isValid()) {
            $id = $form->getData();
            $curl = new HttpRequestQuery();

            $response = $curl->curl('/subscription/stop', $id["user_id"], true);
            $response = json_decode($response);
            $response = $response->response;
            $session = new Session();
            $session->set('user_id', null);
        }

        return $this->render('main/uidFrom.html.twig', [
            'form' => $form->createView(),
            'response' => $response,
            'header' => 'Unsubscribe',
        ]);
    }
    /**
     * @Route("/deactivate", name="deactivate")
     */
    public function deactivate()
    {
        $session = new Session();
        $curl = new HttpRequestQuery();
        $uid = $session->get('user_id');
        $session->set('user_id', null);
        $name = json_encode(['name' => 'first']);
        $uid = json_encode(['uid' => $uid]);
        echo "/notification/stop/$name/$uid";
        $curl->curl("/notification/stop/$name/$uid");
        return $this->redirectToRoute('main');
    }
}
