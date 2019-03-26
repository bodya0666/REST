<?php

namespace App\Controller\Api;

use App\Entity\Logs;
use App\Entity\Notifications;
use App\Entity\Operation;
use App\Entity\Requests;
use App\Entity\Services;
use App\Entity\Subscriptions;
use App\Controller\BaseController;
use Symfony\Component\Routing\Annotation\Route;

class SubscriptionController extends BaseController
{

    /**
     * @Route("/subscription/new", name="new")
     */
    public function new()
    {
        $start = microtime(true);
        $request = new Requests();
        $subscriptions = new Subscriptions();
        $logSubscription = new Logs();
        $logRequest = new Logs();
        $subId = null;
        $response = null;
        if (count($_POST) > 0) {
            if (isset($_POST['json'])) {
               $json = $_POST['json'];
            } else {
               $json = null;
            }
            $token = null;
            $user_id = null;
            if (is_array($json)) {
               if (isset($json['token']) && isset($json['user_id']))
               {
                   $token = $json['token'];
                   $user_id = $json['user_id'];
                   $json = json_encode($json);
               }
            }
            if (is_string($json)) {
               $data = json_decode($json);
               if (isset($data->token) && isset($data->user_id)) {
                   $token = $data->token;
                   $user_id = $data->user_id;
               }
            }

            $services = $this->checkRelations(['token' => $token], Services::class);
            $sub = $this->checkRelations(['user_id' => $user_id], Subscriptions::class);
            if (!$sub && $services) {
                $subscriptions
                    ->setServices($services)
                    ->setUserId($user_id)
                    ->setDateStart(strtotime(date('Y-m-d H:i:s')))
                    ->setStatus(false)
                    ->setBilling(0);
                $this->save($subscriptions);

                $subId = $subscriptions->getId();
                $response = $this->response(['response' => 'Success']);
                echo $response;

                $logSubscription
                    ->setTimestamp(strtotime(date('Y-m-d H:i:s')))
                    ->setMessage('new subscription');
                $this->save($logSubscription);
            } else {
                $response = $this->response(['response' => 'Operation failed'], 400);
                echo $response;
            }
            $operation = $this->checkRelations(['name' => 'subscription new'], Operation::class);
            $subscriptions = $this->checkRelations(['id' => $subId], Subscriptions::class);
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
        }
        return $this->render('index.html.twig', [

        ]);
    }
    /**
     * @Route("/subscription/stop", name="stop")
     */
    public function stop()
    {
        $start = microtime(true);
        $request = new Requests();
        $logRequest = new Logs();
        $logSubscription = new Logs();
        $notification = new Notifications();
        if (count($_POST) > 0) {
            if (isset($_POST['json'])) {
                $json = $_POST['json'];
            } else {
                $json = null;
            }
            $token = null;
            $user_id = null;
            if (is_array($json)) {
                if (isset($json['token']) && isset($json['user_id']))
                {
                    $token = $json['token'];
                    $user_id = $json['user_id'];
                    $json = json_encode($json);
                }
            }
            if (is_string($json)) {
                $data = json_decode($json);
                if (isset($data->token) && isset($data->user_id)) {
                    $token = $data->token;
                    $user_id = $data->user_id;
                }
            }

            $service = $this->checkRelations(['token' => $token], Services::class);
            $subscriptions = $this->checkRelations(['user_id' => $user_id, 'status' => 1, 'services' => $service], Subscriptions::class);
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
        }
        return $this->render('index.html.twig', [

        ]);
    }
    /**
     * @Route("/subscription/check", name="check")
     */
    public function check()
    {
        $start = microtime(true);
        $request = new Requests();
        $logRequest = new Logs();
        if (count($_POST) > 0) {
            if (isset($_POST['json'])) {
                $json = $_POST['json'];
            } else {
                $json = null;
            }
            $token = null;
            $user_id = null;
            if (is_array($json)) {
                if (isset($json['token']) && isset($json['user_id']))
                {
                    $token = $json['token'];
                    $user_id = $json['user_id'];
                    $json = json_encode($json);
                }
            }
            if (is_string($json)) {
                $data = json_decode($json);
                if (isset($data->token) && isset($data->user_id)) {
                    $token = $data->token;
                    $user_id = $data->user_id;
                }
            }

            $service = $this->checkRelations(['token' => $token], Services::class);
            $subscriptions = $this->checkRelations(['user_id' => $user_id, 'status' => 1, 'services' => $service], Subscriptions::class);

            if ($subscriptions && $service) {
                $response = $this->response(['response' => 'Success']);
                echo $response;
            } else {
                $response = $this->response(['response' => 'Operation failed'], 400);
                echo $response;
            }
            $operation = $this->checkRelations(['name' => 'subscription check'], Operation::class);
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
        }
        return $this->render('index.html.twig', [

        ]);
    }
}
