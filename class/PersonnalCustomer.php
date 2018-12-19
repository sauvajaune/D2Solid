<?php
class PersonnalCustomer {
	 public function __construct($type)
   {
       
        echo '<h2>Je suis un client particulier</h2>';
        $this->isBusiness = false;
        $this->isVip = false ;
       }
       
       // Au départ le panier est vide.
       $this->currentOrder = null;
   }

}