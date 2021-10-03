package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CanCreateRoomMessageParser implements IMessageParser
   {
      
      public static const const_1658:int = 0;
      
      public static const const_1719:int = 1;
       
      
      private var var_2448:int;
      
      private var var_1293:int;
      
      public function CanCreateRoomMessageParser()
      {
         super();
      }
      
      public function get roomLimit() : int
      {
         return var_2448;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1293 = param1.readInteger();
         this.var_2448 = param1.readInteger();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get resultCode() : int
      {
         return var_1293;
      }
   }
}
