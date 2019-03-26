<?php

namespace App\Controller\Api;

use App\Controller\BaseController;
use App\Entity\Logs;
use App\Entity\Notifications;
use App\Entity\Operation;
use App\Entity\Requests;
use App\Entity\Services;
use App\Entity\Subscriptions;
use Symfony\Component\Routing\Annotation\Route;

class NotificationController extends BaseController
{
    /**
     * @Route("/notification/activation/{name}/{uid}", name="activation")
     */
    public function activation($name, $uid)
    {
        $start = microtime(true);
        $json = $name . ',' . $uid;
        $name = json_decode($name);
        $uid = json_decode($uid);
        if (isset($name->name) && isset($uid->uid)) {
            $name = $name->name;
            $uid = $uid->uid;
        } else {
            $name = null;
            $uid = null;
        }

        $logSubscription = new Logs();
        $logRequest = new Logs();
        $notification = new Notifications();
        $request = new Requests();

        $service = $this->checkRelations(['name' => $name], Services::class);
        $subscription = $this->checkRelations(['user_id' => $uid, 'status' => 0, 'services' => $service], Subscriptions::class);
        if ($subscription && $service && $subscription->getBilling() > 0) {
            $subscription->setStatus(true);
            $this->save($subscription);

            $response = $this->response(['response' => 'Success']);
            echo $response;

            $logSubscription
                ->setTimestamp(strtotime(date('Y-m-d H:i:s')))
                ->setMessage('subscription update');
            $this->save($logSubscription);

            $time = microtime(true) - $start;
            $checkNotification = $this->checkRelations(['name' => 'notification stop'], Operation::class);

            $notification
                ->setSubscriptions($subscription)
                ->setTimestamp(strtotime(date('Y-m-d H:i:s')))
                ->setOperation($checkNotification)
                ->setRequest($json)
                ->setResponse($response)
                ->setExecTime($time);
            $this->save($notification);
        } else {
            $response = $this->response(['response' => 'Operation failed'], 400);
            echo $response;
        }
        $operation = $this->checkRelations(['name' => 'subscription stop'], Operation::class);
        $time = microtime(true) - $start;

        $request
            ->setSubscriptions($subscription)
            ->setTimestamp(strtotime(date('Y-m-d H:i:s')))
            ->setOperation($operation)
            ->setRequest($json)
            ->setResponse($response)
            ->setHttpStatus(http_response_code())
            ->setExecTime($time);
        $this->save($request);

        $logRequest
            ->setTimestamp(strtotime(date('Y-m-d H:i:s')))
            ->setMessage('new request');
        $this->save($logRequest);

        return $this->render('index.html.twig', [

        ]);
    }
    /**
     * @Route("/notification/billing/{name}/{uid}/{amount}", name="billing")
     */
    public function billing($name, $uid, $amount)
    {
        $start = microtime(true);
        $logSubscription = new Logs();
        $notification = new Notifications();
        $request = new Requests();
        $logRequest = new Logs();
        $json = $name . ',' . $uid . ',' . $amount;
        $name = json_decode($name);
        $uid = json_decode($uid);
        $amount = json_decode($amount);
        if (isset($name->name) && isset($uid->uid) && isset($amount->amount)) {
            $name = $name->name;
            $uid = $uid->uid;
            $amount = $amount->amount;
        } else {
            $name = null;
            $uid = null;
            $amount = null;
        }

        $service = $this->checkRelations(['name' => $name], Services::class);
        $subscription = $this->checkRelations(['user_id' => $uid, 'services' => $service], Subscriptions::class);


        if ($subscription && $service) {
            // 1$ = 10 days subscribe
            $endDate = $amount * 864000;
            if ($subscription->getDateEnd() == null)
            {
                $subscription
                    ->setBilling($subscription->getBilling() + $amount)
                    ->setDateEnd(strtotime(date('Y-m-d H:i:s')) + $endDate);
                $this->save($subscription);
            }   else {
                $subscription
                    ->setBilling($subscription->getBilling() + $amount)
                    ->setDateEnd($subscription->getDateEnd() + $endDate);
                $this->save($subscription);
            }

            $response = $this->response(['response' => 'Success']);
            echo $response;

            $logSubscription
                ->setTimestamp(strtotime(date('Y-m-d H:i:s')))
                ->setMessage('subscription update');
            $this->save($logSubscription);
            $time = microtime(true) - $start;
            $checkNotification = $this->checkRelations(['name' => 'notification billing'], Operation::class);

            $notification
                ->setSubscriptions($subscription)
                ->setTimestamp(strtotime(date('Y-m-d H:i:s')))
                ->setOperation($checkNotification)
                ->setRequest($json)
                ->setResponse($response)
                ->setExecTime($time);
            $this->save($notification);
        } else {
            $response = $this->response(['response' => 'Operation failed'], 400);
            echo $response;
        }
        $operation = $this->checkRelations(['name' => 'notification billing'], Operation::class);
        $time = microtime(true) - $start;

        $request
            ->setSubscriptions($subscription)
            ->setTimestamp(strtotime(date('Y-m-d H:i:s')))
            ->setOperation($operation)
            ->setRequest($json)
            ->setResponse($response)
            ->setHttpStatus(http_response_code())
            ->setExecTime($time);
        $this->save($request);

        $logRequest
            ->setTimestamp(strtotime(date('Y-m-d H:i:s')))
            ->setMessage('new request');
        $this->save($logRequest);

        return $this->render('index.html.twig', [

        ]);
    }
    /**
     * @Route("/notification/stop/{name}/{uid}", name="deactive")
     */
    public function stop($name, $uid)
    {
        $start = microtime(true);
        $request = new Requests();
        $logRequest = new Logs();
        $logSubscription = new Logs();
        $notification = new Notifications();

        $json = $name . ',' . $uid;
        $name = json_decode($name);
        $uid = json_decode($uid);
        if (isset($name->name) && isset($uid->uid)) {
            $name = $name->name;
            $uid = $uid->uid;
        } else {
            $name = null;
            $uid = null;
        }

        $service = $this->checkRelations(['name' => $name], Services::class);
        $subscriptions = $this->checkRelations(['user_id' => $uid, 'status' => 1, 'services' => $service], Subscriptions::class);
        if ($subscriptions && $service) {
            $subscriptions->setStatus(false);
            $this->save($subscriptions);
            $response = $this->response(['response' => 'Success']);
            echo $response;

            $logSubscription
                ->setTimestamp(strtotime(date('Y-m-d H:i:s')))
                ->setMessage('subscription update');
            $this->save($logSubscription);

            $time = microtime(true) - $start;
            $checkNotification = $this->checkRelations(['name' => 'subscription stop'], Operation::class);

            $notification
                ->setSubscriptions($subscriptions)
                ->setTimestamp(strtotime(date('Y-m-d H:i:s')))
                ->setOperation($checkNotification)
                ->setRequest($json)
                ->setResponse($response)
                ->setExecTime($time);
            $this->save($notification);
        } else {
            $response = $this->response(['response' => 'Operation failed']);
            echo $response;
        }
        $operation = $this->checkRelations(['name' => 'subscription stop'], Operation::class);
        $time = microtime(true) - $start;

        $request
            ->setSubscriptions($subscriptions)
            ->setTimestamp(strtotime(date('Y-m-d H:i:s')))
            ->setOperation($operation)
            ->setRequest($json)
            ->setResponse($response)
            ->setHttpStatus(http_response_code())
            ->setExecTime($time);
        $this->save($request);

        $logRequest
            ->setTimestamp(strtotime(date('Y-m-d H:i:s')))
            ->setMessage('new request');
        $this->save($logRequest);

        return $this->render('index.html.twig', [

        ]);
    }
}
