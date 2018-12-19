<?php
class Order
{
   private $basket;
   public function __construct()
   {
       $this->basket = [];
   }

   public function addProduct(Book $product)
   {
       // Est-ce que le panier est vide ?
       if($this->currentOrder == null)
       {
           $this->currentOrder = new Order();
       }
       $this->getOrder()->addProduct($product);
   }
  
  public function addProduct(Book $product)
   {
       // Ajout du produit spécifié au panier.
       array_push($this->basket, $product);
   }
   public function getTotalAmount()
   {
       if(empty($this->basket) == true)
       {
           return 0;
       }
       else
       {
           // (...) Code calculant le montant total HT du panier.
           return 125.85; // exemple de résultat
       }
   }
   public function removeProduct(Book $product)
   {
       // Recherche le produit spécifié dans le panier.
       $index = array_search($product, $this->basket);
       if($index !== false)
       {
           // Suppression du produit spécifié du panier.
           array_splice($this->basket, $index, 1);
           return true;
       }
       return false;
   }
}