package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var var_1754:int;
      
      private var var_1442:int;
      
      private var var_1751:int;
      
      private var _offerId:int;
      
      private var var_1750:int;
      
      private var var_1748:int;
      
      private var var_1752:Boolean;
      
      private var var_1753:int;
      
      private var var_1749:Boolean;
      
      private var var_1339:String;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1339 = param1.readString();
         var_1442 = param1.readInteger();
         var_1749 = param1.readBoolean();
         var_1752 = param1.readBoolean();
         var_1751 = param1.readInteger();
         var_1753 = param1.readInteger();
         var_1750 = param1.readInteger();
         var_1754 = param1.readInteger();
         var_1748 = param1.readInteger();
      }
      
      public function get year() : int
      {
         return var_1750;
      }
      
      public function get month() : int
      {
         return var_1754;
      }
      
      public function get price() : int
      {
         return var_1442;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get periods() : int
      {
         return var_1751;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return var_1753;
      }
      
      public function get upgrade() : Boolean
      {
         return var_1749;
      }
      
      public function get day() : int
      {
         return var_1748;
      }
      
      public function get vip() : Boolean
      {
         return var_1752;
      }
      
      public function get productCode() : String
      {
         return var_1339;
      }
   }
}
