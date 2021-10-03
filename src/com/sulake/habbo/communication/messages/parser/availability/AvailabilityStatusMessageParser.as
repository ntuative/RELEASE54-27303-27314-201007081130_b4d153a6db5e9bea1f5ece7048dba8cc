package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class AvailabilityStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1121:Boolean;
      
      private var var_1324:Boolean;
      
      public function AvailabilityStatusMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1121 = param1.readInteger() > 0;
         var_1324 = param1.readInteger() > 0;
         return true;
      }
      
      public function get isOpen() : Boolean
      {
         return var_1121;
      }
      
      public function get onShutDown() : Boolean
      {
         return var_1324;
      }
      
      public function flush() : Boolean
      {
         var_1121 = false;
         var_1324 = false;
         return true;
      }
   }
}
