<?php
namespace App\Entity;

class HttpRequestQuery
{
    private $token = '5IaNHzhUj_5lEmCzg3ySQQpZEf6R-Cxe';

    public function curl($interface, $user_id = null, $post = null)
    {

        $url = "http://127.0.0.1:8001$interface";
        $ch = curl_init($url);
        //curl_setopt($ch, CURLOPT_HEADER, 1);
        curl_setopt($ch, CURLOPT_VERBOSE, 1);
        curl_setopt($ch, CURLOPT_USERAGENT, "Mozilla/4.0 (Windows; U; Windows NT 5.0; En; rv:1.8.0.2) Gecko/20070306 Firefox/1.0.0.4");
        curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 10);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
        curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        if ($post) {
            $field = json_encode(['token' => $this->token, 'user_id' => $user_id]);
            curl_setopt($ch, CURLOPT_POST, 1);
            curl_setopt($ch, CURLOPT_POSTFIELDS, "json=$field");
        }

        $c = curl_exec($ch);
        curl_close($ch);
        return $c;
    }
}