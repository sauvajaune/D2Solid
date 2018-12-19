<?php
interface IProduct {
   private $isbn;
   public function __construct($isbn)
   {
       $this->isbn = $isbn;
   }

}