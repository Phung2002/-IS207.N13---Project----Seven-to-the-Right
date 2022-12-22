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
        $query = 'select product.id,img,product_name,product_description,price, id_cate,categorie.categories_name from product JOIN categorie on product.id_cate=categorie.id ORDER BY id DESC';
        $param = array();
        $data = $dbConn->getData($query, $param);
        $listProduct = [];
        foreach ($data as $product) {
            $categoryDTO = new categoriesDTO($product['id_cate'], $product['categories_name']);
            $listProduct[] = new productsDTO($product['id'], $product['img'], $product['product_name'], $product['product_description'], $product['price'], $categoryDTO,);
        }
        return $listProduct;
    }


    public function getDataProduct($product_Id)
    {
        $dbConn = new configuration();
        $query = 'select product.id,img,product_name,product_description,price, id_cate,categorie.categories_name from product JOIN categorie on product.id_cate=categorie.id where product.id=:id';
        $param = array(':id' => $product_Id);
        $data = $dbConn->getData($query, $param);
        foreach ($data as $product) {
            $categoryDTO = new categoriesDTO($product['id_cate'], $product['categories_name']);
            $dataValue = new productsDTO($product['id'], $product['img'], $product['product_name'], $product['product_description'], $product['price'], $categoryDTO, );
        }
        return $dataValue;
    }
}
