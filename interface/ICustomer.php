<?php
interface ICustomer{

	public function addProduct(IProduct product)
	{}
	public function buy(){}
	public function getOrder(){}
	public function removerProducts(IProduct product){}
	public function SendMail(){}
	
	}