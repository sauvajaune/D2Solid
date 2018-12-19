<?php
interface IgetOrder()
   {
       // Est-ce que le panier est vide ?
       if($this->currentOrder == null)
       {
           $this->currentOrder = new Order();
       }
       return $this->currentOrder;
   }
