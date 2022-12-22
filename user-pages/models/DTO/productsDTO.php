<?php
class productsDTO
{
    private $categoryDTO;
    private $id;
    private $img;
    private $clothes_name;
    private $clothes_descripsion;
    private $price;
    // private $size;

    public function __construct($id, $img, $clothes_name, $clothes_description, $price, $categoryDTO)
    {
        $this->id = $id;
        $this->img = $img;
        $this->clothes_name = $clothes_name;
        $this->clothes_descripsion = $clothes_description;
        $this->price = $price;
        // $this->size = $size;
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
        return $this->clothes_name;
    }

    /**
     * Set the value of clothes_name
     *
     * @return  self
     */
    public function setClothes_name($clothes_name)
    {
        $this->clothes_name = $clothes_name;

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
     * Get the value of clothes_descripsion
     */ 
    public function getClothes_descripsion()
    {
        return $this->clothes_descripsion;
    }

    /**
     * Set the value of clothes_descripsion
     *
     * @return  self
     */ 
    public function setClothes_descripsion($clothes_descripsion)
    {
        $this->clothes_descripsion = $clothes_descripsion;

        return $this;
    }

    //  /**
    //  * Get the value of size
    //  */
    // public function getSize()
    // {
    //     return $this->size;
    // }

    // /**
    //  * Set the value of size
    //  *
    //  * @return  self
    //  */
    // public function setSize($size)
    // {
    //     $this->size = $size;
    //     return $this;
    // }

}
