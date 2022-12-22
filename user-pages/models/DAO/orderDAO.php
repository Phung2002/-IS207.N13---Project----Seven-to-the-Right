<?php
include_once '../database/config.php';
include_once '../models/DTO/orderDTO.php';

class orderDAO
{
    public function getAllData($user_id)
    {
        $dbConn = new configuration();
        $query = 'select * from order where id_user=:user_id order by id DESC';
        $param = array(':user_id' => $user_id);
        $data = $dbConn->getData($query, $param);
        $order = [];
        if (is_array($data) || is_object($data))
        {
            foreach ($data as $product) {
                $order[] = new orderDTO($product['id'], $product['id_trans'], $product['id_user'], $product['id_product'],  $product['name'],  $product['product_price'],  $product['quantity']);
            }
        }
        return $order;
    }
}
