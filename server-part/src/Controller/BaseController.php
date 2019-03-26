<?php

namespace App\Controller;

use App\Entity\Subscriptions;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class BaseController extends AbstractController
{
    protected function checkRelations(array $column, $nameClass)
    {
        $Repository = $this->getDoctrine()->getRepository($nameClass);
        $column = $Repository->findOneBy($column);
        return $column;
    }

    protected function response(array $response, int $code = 200)
    {
        http_response_code($code);
        header('Content-Type: application/json');
        return json_encode($response);
    }
    protected function save($entity)
    {
        $entityManager = $this->getDoctrine()->getManager();
        $entityManager->persist($entity);
        $entityManager->flush();
    }
}
