<?php

namespace App\Controller;

use App\Entity\HttpRequestQuery;
use App\Form\UidType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Session\Session;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;

class MainController extends AbstractController
{
    /**
     * @Route("/", name="main")
     */
    public function index()
    {
        return $this->render('main/index.html.twig', [
            'controller_name' => 'MainController',
        ]);
    }
    /**
     * @Route("/auth", name="auth")
     */
    public function auth(Request $request)
    {
        $session = new Session();
        if ($session->get('user_id')) {
            return $this->redirectToRoute('profile');
        }
        $form = $this->createForm(UidType::class);
        $form->handleRequest($request);
        $notFind = null;

        if ($form->isSubmitted() && $form->isValid()) {
            $id = $form->getData();
            $curl = new HttpRequestQuery();

            $response = $curl->curl('/subscription/check', $id["user_id"], true);
            $response = json_decode($response);

            if ($response->response == 'Success') {
                $session = new Session();
                $session->set('user_id', $id["user_id"]);
                return $this->redirectToRoute('profile');
            } else {
                $notFind = $response->response;
            }
        }
        return $this->render('main/uidFrom.html.twig', [
            'form' => $form->createView(),
            'response' => $notFind,
            'header' => 'Login'
        ]);
    }
    /**
     * @Route("/profile", name="profile")
     */
    public function profile()
    {
        $session = new Session();
        if (!$session->get('user_id')) {
            return $this->redirectToRoute('auth');
        }
        $curl = new HttpRequestQuery();
        $uid = json_encode(['uid' => $session->get('user_id')]);

        $billing = $curl->curl("/profile/$uid/billing");
        $billing = json_decode($billing);

        $subEnd = $curl->curl("/profile/$uid/date_end");
        $subEnd = json_decode($subEnd);

        if (isset($billing->response) && isset($subEnd->response)) {
            $billing = $billing->response;
            $subEnd = date("Y-m-d H:i:s", $subEnd->response);
        } else {
            $billing = null;
            $subEnd = null;
        }

        return $this->render('main/profile.html.twig', [
            'billing' => $billing,
            'end' => $subEnd,
        ]);
    }
}
