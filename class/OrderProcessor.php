<?php
class OrderProcessor
{
   public function checkout(Customer $customer)
   {
       $totalAmount = $customer->getOrder()->getTotalAmount();
       if($customer->isBusiness() == false)
       {
           echo '<h2>Paiement du client particulier</h2>';
           // (...) Code spécifique de paiement par carte bleue pour les clients particuliers.
       }
       else
       {
           echo '<h2>Paiement du client business</h2>';
           // (...) Code spécifique de paiement en 3x pour les clients business.
       }
   }
}