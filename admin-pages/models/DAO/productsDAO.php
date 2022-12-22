<?php

include_once '../database/config.php';
include_once '../models/DTO/productsDTO.php';
include_once '../models/DTO/categoriesDTO.php';

class productsDAO
{
    private $dbConn;

    public function getAllData()
    {
        $dbConn = new configuration();
        $query = 'select product.id,img,product_name,product_description,price,id_cate,categorie.categories_name from product JOIN categorie on product.id_cate=categorie.id';
        $param = array();
        $data = $dbConn->getData($query, $param);
        $listProduct = [];
        if (is_array($data) || is_object($data))
        {
        foreach ($data as $product) {
            $categoryDTO = new categoriesDTO($product['id_cate'], $product['categories_name']);
            $listProduct[] = new productsDTO($product['id'], $product['img'], $product['product_name'], $product['product_description'], $product['price'], $categoryDTO);
        }
        }
        return $listProduct;
    }


    public function getDataProduct($product_Id)
    {
        $dbConn = new configuration();
        $query = 'select product.id,img,product_name,product_description,price,id_cate,categorie.categories_name from product JOIN categorie on product.id_cate=categorie.id where product.id=:id';
        $param = array(':id' => $product_Id);
        $data = $dbConn->getData($query, $param);
        foreach ($data as $product) {
            $categoryDTO = new categoriesDTO($product['id_cate'], $product['categories_name']);
            $dataValue = new productsDTO($product['id'], $product['img'], $product['product_name'], $product['product_description'], $product['price'], $categoryDTO);
        }
        return $dataValue;
    }

    public function insertProduct($id_cate, $img, $product_name, $product_description, $price)
    {
        $dbConn = new configuration();
        $query = 'INSERT INTO product(id_cate,img,product_name,product_description,price) VALUES (:id_cate,:img,:product_name,:product_description,:price)';
        $param = array(':id_cate' => $id_cate, ':img' => $img, ':product_name' => $product_name, ':product_description' => $product_description, ':price' => $price);
        $dbConn->insertData($query, $param);
    }

    public function updateProduct($id, $id_cate, $img, $product_name, $product_description, $price)
    {
        $dbConn = new configuration();
        if ($img == '') {
            $query = 'UPDATE product set id_cate=:id_cate,product_name=:product_name,product_description=:product_description,price=:price where id=:id';
            $param = array(':id_cate' => $id_cate,  ':product_name' => $product_name, ':product_description' => $product_description, ':price' => $price, ':id' => $id);
        } else {
            $query = 'UPDATE product set id_cate=:id_cate,img=:img,product_name=:product_name,product_description=:product_description,price=:price where id=:id';
            $param = array(':id_cate' => $id_cate, ':img' => $img, ':product_name' => $product_name, ':product_description' => $product_description, ':price' => $price, ':id' => $id);
        }

        $dbConn->updateData($query, $param);
    }

    public function delProduct($id)
    {
        $dbConn = new configuration();
        $query = 'DELETE FROM product WHERE id=:id';
        $param = array(':id' => $id);
        $dbConn->updateData($query, $param);
    }
}
