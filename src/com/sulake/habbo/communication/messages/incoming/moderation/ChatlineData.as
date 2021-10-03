package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_1556:String;
      
      private var var_2067:int;
      
      private var var_2068:int;
      
      private var var_2069:int;
      
      private var var_2066:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         var_2067 = param1.readInteger();
         var_2069 = param1.readInteger();
         var_2068 = param1.readInteger();
         var_2066 = param1.readString();
         var_1556 = param1.readString();
      }
      
      public function get msg() : String
      {
         return var_1556;
      }
      
      public function get hour() : int
      {
         return var_2067;
      }
      
      public function get minute() : int
      {
         return var_2069;
      }
      
      public function get chatterName() : String
      {
         return var_2066;
      }
      
      public function get chatterId() : int
      {
         return var_2068;
      }
   }
}
