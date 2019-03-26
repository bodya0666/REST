<?php


namespace App\Entity;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use App\Entity\Subscriptions;

class Queries extends AbstractController
{
    public function addSubscription($user_id)
    {

        $subRepository = $this->getDoctrine()->getRepository(Subscriptions::class);
        $sub = $subRepository->findOneBy(['user_id' => $user_id]);
        return $sub;
    }
}