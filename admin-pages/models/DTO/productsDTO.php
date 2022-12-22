<?php
class productsDTO
{
    private $categoryDTO;
    private $id;
    private $img;
    private $product_name;
    private $product_description;
    private $price;

    public function __construct($id, $img, $product_name, $product_description, $price, $categoryDTO)
    {
        $this->id = $id;
        $this->img = $img;
        $this->product_name = $product_name;
        $this->product_description = $product_description;
        $this->price = $price;
        $this->categoryDTO = $categoryDTO;
    }

    /**
     * Get the value of price
     */
    public function getPrice()
    {
        return $this->price;
    }

    /**
     * Set the value of price
     *
     * @return  self
     */
    public function setPrice($price)
    {
        $this->price = $price;
        return $this;
    }


    /**
     * Get the value of clothes_name
     */
    public function getClothes_name()
    {
        return $this->product_name;
    }

    /**
     * Set the value of clothes_name
     *
     * @return  self
     */
    public function setClothes_name($product_name)
    {
        $this->product_name = $product_name;

        return $this;
    }

    /**
     * Get the value of img
     */
    public function getImg()
    {
        return $this->img;
    }

    /**
     * Set the value of img
     *
     * @return  self
     */
    public function setImg($img)
    {
        $this->img = $img;

        return $this;
    }

    /**
     * Get the value of id
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set the value of id
     *
     * @return  self
     */
    public function setId($id)
    {
        $this->id = $id;

        return $this;
    }

    /**
     * Get the value of id_cate
     */

    /**
     * Get the value of categoryDTO
     */
    public function getCategoryDTO()
    {
        return $this->categoryDTO;
    }

    /**
     * Set the value of categoryDTO
     *
     * @return  self
     */
    public function setCategoryDTO($categoryDTO)
    {
        $this->categoryDTO = $categoryDTO;

        return $this;
    }

    /**
     * Get the value of clothes_description
     */ 
    public function getClothes_description()
    {
        return $this->product_description;
    }

    /**
     * Set the value of clothes_description
     *
     * @return  self
     */ 
    public function setClothes_description($product_description)
    {
        $this->product_description = $product_description;

        return $this;
    }
}
