<?php

namespace App\Controller;

use App\Entity\HttpRequestQuery;
use App\Form\BillingType;
use App\Form\UidType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;

class SubscriptionController extends AbstractController
{
    /**
     * @Route("/subscription/new", name="subscribe")
     */
    public function subscribe(Request $request)
    {
        $form = $this->createForm(UidType::class);
        $form->handleRequest($request);
        $response = null;

        if ($form->isSubmitted() && $form->isValid()) {
            $id = $form->getData();
            $curl = new HttpRequestQuery();

            $response = $curl->curl('/subscription/new', $id["user_id"], true);
            $response = json_decode($response);
            $response = $response->response;

            if ($response == 'Success')
            {
                return $this->redirectToRoute('billing');
            }
        }

        return $this->render('main/uidFrom.html.twig', [
            'form' => $form->createView(),
            'response' => $response,
            'header' => 'Subscribe',
        ]);
    }
    /**
     * @Route("/billing", name="billing")
     */
    public function billing(Request $request)
    {
        $form = $this->createForm(BillingType::class);
        $form->handleRequest($request);
        $response = null;

        if ($form->isSubmitted() && $form->isValid()) {
            $data = $form->getData();
            $curl = new HttpRequestQuery();

            $name = json_encode(['name' => 'first']);
            $uid = json_encode(['uid' => $data['user_id']]);
            $amount = json_encode(['amount' => $data['amount']]);
            $response = $curl->curl("/notification/billing/$name/$uid/$amount");
            $response = json_decode($response);
            $response = $response->response . ". Please activation subscribe, if you need it.";
        }

        return $this->render('main/uidFrom.html.twig', [
            'form' => $form->createView(),
            'response' => $response,
            'header' => 'Billing'
        ]);
    }
    /**
     * @Route("/activation", name="activation")
     */
    public function activation(Request $request)
    {
        $form = $this->createForm(UidType::class);
        $form->handleRequest($request);
        $response = null;

        if ($form->isSubmitted() && $form->isValid()) {
            $data = $form->getData();
            $curl = new HttpRequestQuery();

            $name = json_encode(['name' => 'first']);
            $uid = json_encode(['uid' => $data['user_id']]);
            $response = $curl->curl("/notification/activation/$name/$uid");
            $response = json_decode($response);
            $response = $response->response;

            if ($response == 'Success')
            {
                return $this->redirectToRoute('auth');
            }
        }

        return $this->render('main/uidFrom.html.twig', [
            'form' => $form->createView(),
            'response' => $response,
            'header' => 'Activation',
        ]);
    }
}
