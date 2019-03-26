<?php

namespace App\Controller\Api;

use App\Controller\BaseController;
use App\Entity\Logs;
use App\Entity\Notifications;
use App\Entity\Operation;
use App\Entity\Requests;
use App\Entity\Subscriptions;
use App\Repository\NotificationsRepository;
use App\Repository\OperationRepository;
use App\Repository\SubscriptionsRepository;
use Symfony\Component\Routing\Annotation\Route;

class ProfileController extends BaseController
{
    /**
     * @Route("/profile/{id}/{request}", name="profile")
     */
    public function profile($id, $request, SubscriptionsRepository $subscriptions, OperationRepository $operation)
    {
        $start = microtime(true);
        $uid = json_decode($id);

        if (isset($uid->uid)) {
            $uid = $uid->uid;
        } else {
            $uid = null;
        }
        $json = $id . ',' . json_encode($request);
        $repository = $this->getDoctrine()->getRepository(Notifications::class);
        $subscription = $this->checkRelations(['user_id' => $uid], Subscriptions::class);

        $operation = $this->checkRelations(['name' => 'notification billing'], Operation::class);
        $notifications = $repository->findBy(['subscriptions' => $subscription, 'operation' => $operation], ['timestamp' => 'DESC']);
        if ($subscription && $notifications) {
            if ($request == 'billing') {
                if ($notifications) {
                    foreach ($notifications as $key => $notification) {
                        $arr[$key] = explode(',', $notification->getRequest());
                        $time = $notification->getTimestamp();
                        $arr[$key] = json_decode($arr[$key][2]);
                        $array[$key]['amount'] = $arr[$key]->amount;
                        $array[$key]['time'] = date("Y-m-d H:i:s", $time);
                    }
                    $response = $this->response(['response' => $array]);
                    echo $response;
                }
            }
            if ($request == 'date_end') {
                $response = $this->response(['response' => $subscription->getDateEnd()]);
                echo $response;
            }
        } else {
            $response = $this->response(['response' => 'Operation failed']);
            echo $response;
        }

        $time = microtime(true) - $start;
        $operation = $this->checkRelations(['name' => 'get user info'], Operation::class);
        $request = new Requests();
        $request
            ->setSubscriptions($subscription)
            ->setTimestamp(strtotime(date('Y-m-d H:i:s')))
            ->setOperation($operation)
            ->setRequest($json)
            ->setResponse($response)
            ->setHttpStatus(http_response_code())
            ->setExecTime($time);
        $this->save($request);

        $logRequest = new Logs();
        $logRequest
            ->setTimestamp(strtotime(date('Y-m-d H:i:s')))
            ->setMessage('new request');
        $this->save($logRequest);
        return $this->render('index.html.twig', [

        ]);
    }
}
