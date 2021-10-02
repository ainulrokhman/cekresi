<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class AuthModel extends CI_Model {

    public function getToken()
    {
        $url = 'https://resi.id/api/auth/login';
        $data =  [
            'email' => 'developherdenature@gmail.com',
            'password' => 'DenaturePWR'
        ];
        $options = array(
            'http' => array(
                'header'  => "Content-type: application/x-www-form-urlencoded\r\n",
                'method'  => 'POST',
                'content' => http_build_query($data)
            )
        );
        $context  = stream_context_create($options);
        $result = @file_get_contents($url, false, $context);
        if ($result === FALSE) { 
            return json_encode(['error' => 'xxxx']);
         }

        return json_decode($result)->token;
    }

    public function globalException($e)
    {
        echo $e . 'error';
    }
    
    function getStatus($courier, $awb, $token)
    {
        if ($courier === 'jne') {
            $url = "https://resi.id/api/track?courier=$courier&awb=$awb";
            $ch = curl_init($url);
            $headers = [];
            $headers[] = 'Content-Type:application/json';
            $headers[] = "Authorization: Bearer ".$token;
            curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            $result = json_decode(curl_exec($ch), true);
            curl_close($ch);

            if (isset($result['error'])) {
                $result = [
                    'code' => $result['error']['status_code'],
                    'status' => 'Tidak terlacak!!',
                ];
            } else {
                foreach ($result['history'] as $v) {
                    if (strpos($v['desc'], "Refuse")) {
                        $result['status'] = "RETURNED";
                    }
                }
                $result = [
                    'code' => 200,
                    'status' => $result['status'],
                    'selesai' => $result['status'] === "RETURNED" ? true :
                        $result['status'] === "DELIVERED" ? true : false ,
                ];                
            }

            return json_encode($result);
        } else {
            return $this->_rajaOngkir($awb, $courier);
        }
        
    }

    private function _rajaOngkir($resi, $kurir)
    {
        $curl = curl_init();

        curl_setopt_array($curl, array(
        CURLOPT_URL => "https://pro.rajaongkir.com/api/waybill",
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_ENCODING => "",
        CURLOPT_MAXREDIRS => 10,
        CURLOPT_TIMEOUT => 30,
        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
        CURLOPT_CUSTOMREQUEST => "POST",
        CURLOPT_POSTFIELDS => "waybill=$resi&courier=$kurir",
        CURLOPT_HTTPHEADER => array(
            "content-type: application/x-www-form-urlencoded",
            "key: 89764b0ef8bb10bca8e48175d4b573d8"
        ),
        ));

        $response = json_decode(curl_exec($curl), true);

        $kode = $response['rajaongkir']['status']['code'];

        $result = [];

        if ($kode === 200) {
            $status = $response['rajaongkir']['result']['delivery_status']['status'];

            $sampai = $response['rajaongkir']['result']['delivered'];

            foreach ($response['rajaongkir']['result']['manifest'] as $v) {
                if (
                    strpos($v['manifest_code'], "RETUR") !== false
                    || strpos($v['manifest_code'], "8") !== false
                    || strpos($v['manifest_description'], "Penerima membatalkan pesanan") !== false
                    ) {
                    $sampai = true;
                    $status = "RETURNED";
                }
            }

            $result = [
                'code' => $kode,
                'status' => $status,
                'selesai' => $sampai,
                'resi' => $resi,
            ];
        } else {
            $result = [
                'code' => $kode,
                'status' => 'Tidak terlacak!!',
            ];
        }


        return json_encode($result);
    }
}
