<?php
class BusinessCustomer{
	 public function __construct($type)
   {
       
        echo '<h2>Je suis un client Business</h2>';
        $this->isPersonnal = false;
        $this->isVip = false ;
       }
       
       // Au départ le panier est vide.
       $this->currentOrder = null;
   }


}