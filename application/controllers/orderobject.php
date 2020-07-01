<?php
class OrderDetails {
 
    private $StoreName;
    private $StoreEmail;
    private $CustomerName;
    private $CustomerEmail;
    private $CustomerTelephone;
    private $CustomerAddress;
    private $ProductId;
    private $Product;	
    private $Price;
    private $TotalPrice;

    public function GetStoreName(){
        return $this->StoreName;
    }
    public function SetStoreName($StoreName){
        $this->StoreName = $StoreName;
    }

    public function GetStoreEmail(){
        return $this->StoreEmail;
    }
    public function SetStoreEmail($StoreEmail){
        $this->StoreEmail = $StoreEmail;
    }

    public function GetCustomerName(){
        return $this->CustomerName;
    }
    public function SetCustomerName($CustomerName){
        $this->CustomerName = $CustomerName;
    }

    public function GetCustomerEmail(){
        return $this->CustomerEmail;
    }
    public function SetCustomerEmail($CustomerEmail){
        $this->CustomerEmail = $CustomerEmail;
    }

    public function GetCustomerTelephone(){
        return $this->CustomerTelephone;
    }
    public function SetCustomerTelephone($CustomerTelephone){
        $this->CustomerTelephone = $CustomerTelephone;
    }

    public function GetCustomerAddress(){
        return $this->CustomerAddress;
    }
    public function SetCustomerAddress($CustomerAddress){
        $this->CustomerAddress = $CustomerAddress;
    }

    public function GetProductId(){
        return $this->ProductId;
    }
    public function SetProductId($ProductId){
        $this->ProductId = $ProductId;
    }

    public function GetProduct(){
        return $this->Product;
    }
    public function SetProduct($Product){
        $this->Product = $Product;
    }

    public function GetPrice(){
        return $this->Price;
    }
    public function SetPrice($Price){
        $this->Price = $Price;
    }

    public function GetTotalPrice(){
        return $this->TotalPrice;
    }
    public function SetTotalPrice($TotalPrice){
        $this->TotalPrice = $TotalPrice;
    }
}

?>