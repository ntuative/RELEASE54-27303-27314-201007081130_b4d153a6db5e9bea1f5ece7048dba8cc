package com.sulake.habbo.widget.messages
{
   public class RoomWidgetRoomTagSearchMessage extends RoomWidgetMessage
   {
      
      public static const const_646:String = "RWRTSM_ROOM_TAG_SEARCH";
       
      
      private var var_1829:String = "";
      
      public function RoomWidgetRoomTagSearchMessage(param1:String)
      {
         super(const_646);
         var_1829 = param1;
      }
      
      public function get tag() : String
      {
         return var_1829;
      }
   }
}
