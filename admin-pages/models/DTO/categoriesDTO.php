<?php

class categoriesDTO
{
    private $id;
    private $category_name;

    public function __construct($id, $catergories_name)
    {
        $this->id = $id;
        $this->category_name = $catergories_name;
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
     * Get the value of category_name
     */
    public function getCategory_name()
    {
        return $this->category_name;
    }

    /**
     * Set the value of category_name
     *
     * @return  self
     */
    public function setCategory_name($categories_name)
    {
        $this->categories_name = $categories_name;

        return $this;
    }
}
