package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoucherRedeemErrorMessageParser implements IMessageParser
   {
       
      
      private var var_1255:String = "";
      
      public function VoucherRedeemErrorMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1255 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         var_1255 = "";
         return true;
      }
      
      public function get errorCode() : String
      {
         return var_1255;
      }
   }
}
