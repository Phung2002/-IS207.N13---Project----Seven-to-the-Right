<?php

include_once '../models/DAO/productsDAO.php';
include_once '../models/DTO/productsDTO.php';
include_once '../models/untils/imgUpload.php';

class productsController
{
    public function getClothes()
    {
        $productDAO = new productsDAO();
        return $productDAO->getAllData();
    }
    public function getSingleClothes($id)
    {
        $productDAO = new productsDAO();
        return $productDAO->getDataProduct($id);
    }

    public function insertProduct($id_cate, $img, $product_name, $product_description, $price)
    {
        $productDAO = new productsDAO();
        $productDAO->insertProduct($id_cate, $img, $product_name, $product_description, $price);
    }

    public function updateProduct($id, $id_cate, $img, $product_name, $product_description, $price)
    {
        $productDAO = new productsDAO();
        $productDAO->updateProduct($id, $id_cate, $img, $product_name, $product_description, $price);
    }

    public function delProduct($id)
    {
        $productDAO = new productsDAO();
        $productDAO->delProduct($id);
    }
}


isset($_GET['action']) ? $action = $_GET['action'] : '';
isset($_POST['action']) ? $action = $_POST['action'] : '';
isset($action) ? $action : $action = -1;
switch ($action) {
    case "getData":
        $product = new productsController();
        $products = $product->getClothes();
        break;

    case "insertProduct":
        if (session_id() === '') {
            session_start();
        }
        $img = $_FILES['img'];
        $message = imgUpload::uploadFile($img);
        if ($message == '') {
            $id_cate = $_COOKIE['item'];
            $product_name = $_POST['title'];
            $product_description = $_POST['decripsion'];
            $price = $_POST['price'];
            $product = new productsController();
            $product->insertProduct($id_cate, $img['name'], $product_name, $product_description, $price);
            $_SESSION['message'] = "Lưu thành công";
            $_COOKIE['item'] = $id_cate;
            header('Location: ../controller/productsController.php');
        } else {
            $_SESSION['message'] = $message;
            include_once '../views/item-editor.php';
        }
        break;

    case "getProduct":
        $id = $_GET['id'];
        $product = new productsController();
        $prd = $product->getSingleClothes($id);
        include_once '../views/item-editor.php';
        break;

    case "editProduct":
        if (session_id() === '') {
            session_start();
        }
        $img = $_FILES['img'];
        $message = imgUpload::uploadFile($img);
        if ($message == '') {
            $id = $_GET['id'];
            $id_cate = $_COOKIE['item'];
            $product_name = $_POST['title'];
            $product_description = $_POST['decripsion'];
            $price = $_POST['price'];
            $product = new productsController();
            $product->updateProduct($id, $id_cate, $img['name'], $product_name, $product_description, $price);
            $_SESSION['message'] = "Lưu thành công";
            header('Location: ../controller/productsController.php');
        } else {
            $_SESSION['message'] = $message;
            include_once '../views/item-editor.php';
        }
        break;

    case "delProduct":
        if (session_id() === '') {
            session_start();
        }
        $id = $_GET['id'];
        $product = new productsController();
        $product->delProduct($id);
        $_SESSION['message'] = "Xóa thành công";
        header('Location: ../controller/productsController.php');
        break;

    default:
        $product = new productsController();
        $products = $product->getClothes();
        include_once '../views/items-list.php';
        break;
}
