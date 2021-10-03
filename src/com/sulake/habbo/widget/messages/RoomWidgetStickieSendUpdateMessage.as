package com.sulake.habbo.widget.messages
{
   public class RoomWidgetStickieSendUpdateMessage extends RoomWidgetMessage
   {
      
      public static const const_448:String = "RWSUM_STICKIE_SEND_UPDATE";
      
      public static const const_747:String = "RWSUM_STICKIE_SEND_DELETE";
       
      
      private var var_716:String;
      
      private var var_165:int;
      
      private var var_213:String;
      
      public function RoomWidgetStickieSendUpdateMessage(param1:String, param2:int, param3:String = "", param4:String = "")
      {
         super(param1);
         var_165 = param2;
         var_213 = param3;
         var_716 = param4;
      }
      
      public function get objectId() : int
      {
         return var_165;
      }
      
      public function get text() : String
      {
         return var_213;
      }
      
      public function get colorHex() : String
      {
         return var_716;
      }
   }
}
