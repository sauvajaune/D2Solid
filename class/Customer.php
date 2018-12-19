<?php
abstract class Customer 
{
   private $currentOrder;
   private $isBusiness;
   public function __construct($type)
   {
       if($type == 'personal')
       {
           echo '<h2>Je suis un client particulier</h2>';
           $this->isBusiness = false;
       }
       else if($type == 'business')
       {
           echo '<h2>Je suis un client business</h2>';
           $this->isBusiness = true;
       }
       // Au départ le panier est vide.
       $this->currentOrder = null;
   }

   

   public function buy(OrderProcessor $orderProcessor)
   {
       // Est-ce que le panier est vide ?
       if($this->currentOrder == null)
       {
           // Oui, donc aucun achat à faire.
           return false;
       }
       // Procède au paiement de la commande.
       $orderProcessor->checkout($this);
       return true;
   }

   public function getOrder()
   {
       // Est-ce que le panier est vide ?
       if($this->currentOrder == null)
       {
           $this->currentOrder = new Order();
       }
       return $this->currentOrder;
   }

   public function isBusiness()
   {
       return $this->isBusiness;
   }
   
   public function removeProduct(Book $product)
   {
       // Est-ce que le panier est vide ?
       if($this->currentOrder == null)
       {
           throw new Exception("On ne peut pas retirer un produit d'un panier vide !");
       }
       $this->getOrder()->removeProduct($product);
   }
}