package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData
   {
       
      
      private var var_2336:int;
      
      private var var_1442:int;
      
      private var var_1729:int;
      
      private var var_2079:int = -1;
      
      private var var_156:int;
      
      private var var_1784:int;
      
      private var _image:BitmapData;
      
      private var _offerId:int;
      
      private var var_1443:int;
      
      private var _furniId:int;
      
      private var var_1491:String;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         _offerId = param1;
         _furniId = param2;
         var_1784 = param3;
         var_1491 = param4;
         var_1442 = param5;
         var_156 = param6;
         var_1729 = param7;
         var_1443 = param8;
      }
      
      public function get furniId() : int
      {
         return _furniId;
      }
      
      public function get furniType() : int
      {
         return var_1784;
      }
      
      public function set imageCallback(param1:int) : void
      {
         var_2336 = param1;
      }
      
      public function get price() : int
      {
         return var_1442;
      }
      
      public function get stuffData() : String
      {
         return var_1491;
      }
      
      public function get imageCallback() : int
      {
         return var_2336;
      }
      
      public function get timeLeftMinutes() : int
      {
         return var_2079;
      }
      
      public function get offerCount() : int
      {
         return var_1443;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function set timeLeftMinutes(param1:int) : void
      {
         var_2079 = param1;
      }
      
      public function dispose() : void
      {
         if(_image)
         {
            _image.dispose();
            _image = null;
         }
      }
      
      public function set price(param1:int) : void
      {
         var_1442 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         var_1443 = param1;
      }
      
      public function get status() : int
      {
         return var_156;
      }
      
      public function get averagePrice() : int
      {
         return var_1729;
      }
      
      public function set offerId(param1:int) : void
      {
         _offerId = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         if(_image != null)
         {
            _image.dispose();
         }
         _image = param1;
      }
   }
}
