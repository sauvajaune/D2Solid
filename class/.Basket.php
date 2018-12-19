<?php
class Basket {

	private $currentOrder;

	public function addProduct(Book $product)
   {
       // Est-ce que le panier est vide ?
       if($this->currentOrder == null)
       {
           $this->currentOrder = new Order();
       }
       $this->getOrder()->addProduct($product);
   }
}