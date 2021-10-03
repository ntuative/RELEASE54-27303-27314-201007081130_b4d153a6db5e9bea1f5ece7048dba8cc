package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatMessage extends RoomWidgetMessage
   {
      
      public static const const_119:int = 0;
      
      public static const const_116:int = 1;
      
      public static const const_106:int = 2;
      
      public static const const_530:String = "RWCM_MESSAGE_CHAT";
       
      
      private var var_1253:int = 0;
      
      private var var_1791:String = "";
      
      private var var_213:String = "";
      
      public function RoomWidgetChatMessage(param1:String, param2:String, param3:int = 0, param4:String = "")
      {
         super(param1);
         var_213 = param2;
         var_1253 = param3;
         var_1791 = param4;
      }
      
      public function get recipientName() : String
      {
         return var_1791;
      }
      
      public function get chatType() : int
      {
         return var_1253;
      }
      
      public function get text() : String
      {
         return var_213;
      }
   }
}
