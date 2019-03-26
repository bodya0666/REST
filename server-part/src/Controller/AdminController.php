<?php

namespace App\Controller;

use App\Entity\Services;
use App\Entity\Subscriptions;
use App\Form\FilterType;
use App\Repository\LogsRepository;
use App\Repository\NotificationsRepository;
use App\Repository\RequestsRepository;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;

class AdminController extends BaseController
{
    /**
     * @Route("/data", name="data")
     */
    public function index()
    {
        $repository = $this->getDoctrine()->getRepository(Subscriptions::class);
        $subscription = $repository->findBy([], ['date_start' => 'DESC']);
        return $this->render('admin/show.html.twig', [
            'subscriptions' => $subscription,
        ]);
    }
    /**
     * @Route("/", name="admin")
     */
    public function admin()
    {
        return $this->render('admin/admin.html.twig', [
        ]);
    }
    /**
     * @Route("/filter", name="filter")
     */
    public function filter(Request $request)
    {
        $form = $this->createForm(FilterType::class);
        $form->handleRequest($request);

        $sevRepository = $this->getDoctrine()->getRepository(Services::class);
        $subRepository = $this->getDoctrine()->getRepository(Subscriptions::class);
        $response = null;
        if ($form->isSubmitted() && $form->isValid()) {
            $data = $form->getData();
            if ($data['column'] == 'Service') {
                $service = $sevRepository->findBy(['name' => $data['value']]);
                $response = $subRepository->findBy(['services' => $service], ['date_start' => 'DESC']);
            }
            if ($data['column'] == 'User id') {
                $response = $subRepository->findBy(['user_id' => $data['value']], ['date_start' => 'DESC']);
            }

          // var_dump($response);
        }
        return $this->render('admin/filter.html.twig', [
            'form' => $form->createView(),
            'subscriptions' => $response,
        ]);
    }
    /**
     * @Route("/request", name="request")
     */
    public function request(RequestsRepository $requestsRepository)
    {

        return $this->render('admin/listing/request.html.twig', [
            'requests' => $requestsRepository->findBy([], ['id' => 'DESC']),
        ]);
    }
    /**
     * @Route("/notification", name="notification")
     */
    public function notification(NotificationsRepository $notificationsRepository)
    {

        return $this->render('admin/listing/notification.html.twig', [
            'notifications' => $notificationsRepository->findBy([], ['timestamp' => 'DESC']),
        ]);
    }
    /**
     * @Route("/log", name="log")
     */
    public function log(LogsRepository $logsRepository)
    {

        return $this->render('admin/listing/log.html.twig', [
            'logs' => $logsRepository->findBy([], ['id' => 'DESC']),
        ]);
    }
}
