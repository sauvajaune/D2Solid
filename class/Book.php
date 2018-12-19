<?php
class Book
{
   private $isbn;
   public function __construct($isbn)
   {
       $this->isbn = $isbn;
   }
}