<?php

include_once '../models/DAO/productsDAO.php';
include_once '../models/DTO/productsDTO.php';

class productsController
{
    public function getClothes()
    {
        $productDAO = new productsDAO();
        return $productDAO->getAllData();
    }
    public function getSingleClothes()
    {
        $productDAO = new productsDAO();
        return $productDAO->getDataProduct($_GET['id']);
    }
}

isset($_GET['action']) ? $action = $_GET['action'] : '';
isset($action) ? $action : $action = -1;
switch ($action) {
    case "getData":
        $product = new productsController();
        $products = $product->getClothes();
        break;
    case "getSingleData":
        $product = new productsController();
        $product = $product->getSingleClothes();
        include_once '../views/single-product.php';
        break;
    default:
        $product = new productsController();
        $products = $product->getClothes();
        include_once '../views/products.php';
        break;
}

