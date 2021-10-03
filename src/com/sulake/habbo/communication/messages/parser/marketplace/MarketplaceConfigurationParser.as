package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1962:int;
      
      private var var_1568:int;
      
      private var var_1960:int;
      
      private var var_1958:int;
      
      private var var_1956:int;
      
      private var var_1567:int;
      
      private var var_1959:int;
      
      private var var_1228:Boolean;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get offerMaxPrice() : int
      {
         return var_1962;
      }
      
      public function get tokenBatchPrice() : int
      {
         return var_1568;
      }
      
      public function get averagePricePeriod() : int
      {
         return var_1959;
      }
      
      public function get offerMinPrice() : int
      {
         return var_1958;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get expirationHours() : int
      {
         return var_1956;
      }
      
      public function get tokenBatchSize() : int
      {
         return var_1567;
      }
      
      public function get commission() : int
      {
         return var_1960;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1228 = param1.readBoolean();
         var_1960 = param1.readInteger();
         var_1568 = param1.readInteger();
         var_1567 = param1.readInteger();
         var_1958 = param1.readInteger();
         var_1962 = param1.readInteger();
         var_1956 = param1.readInteger();
         var_1959 = param1.readInteger();
         return true;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1228;
      }
   }
}
