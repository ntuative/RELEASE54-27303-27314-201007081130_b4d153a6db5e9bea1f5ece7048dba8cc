package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1599:int = 2;
      
      public static const const_1252:int = 4;
      
      public static const const_1296:int = 1;
      
      public static const const_1442:int = 3;
       
      
      private var var_1143:int = 0;
      
      private var var_966:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function get reason() : int
      {
         return var_1143;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1143 = param1.readInteger();
         if(var_1143 == 3)
         {
            var_966 = param1.readString();
         }
         else
         {
            var_966 = "";
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         var_1143 = 0;
         var_966 = "";
         return true;
      }
      
      public function get parameter() : String
      {
         return var_966;
      }
   }
}
