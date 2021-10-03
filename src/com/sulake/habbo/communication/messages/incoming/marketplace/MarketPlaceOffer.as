package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1442:int;
      
      private var var_1729:int;
      
      private var var_2079:int = -1;
      
      private var var_156:int;
      
      private var var_1784:int;
      
      private var _offerId:int;
      
      private var var_1443:int;
      
      private var _furniId:int;
      
      private var var_1491:String;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         _offerId = param1;
         _furniId = param2;
         var_1784 = param3;
         var_1491 = param4;
         var_1442 = param5;
         var_156 = param6;
         var_2079 = param7;
         var_1729 = param8;
         var_1443 = param9;
      }
      
      public function get status() : int
      {
         return var_156;
      }
      
      public function get price() : int
      {
         return var_1442;
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
      
      public function get furniType() : int
      {
         return var_1784;
      }
      
      public function get averagePrice() : int
      {
         return var_1729;
      }
      
      public function get furniId() : int
      {
         return _furniId;
      }
      
      public function get stuffData() : String
      {
         return var_1491;
      }
   }
}
