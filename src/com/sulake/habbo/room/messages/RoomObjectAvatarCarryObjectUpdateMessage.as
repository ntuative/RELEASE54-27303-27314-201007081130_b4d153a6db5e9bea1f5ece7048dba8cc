package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarCarryObjectUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1183:int;
      
      private var var_1449:String;
      
      public function RoomObjectAvatarCarryObjectUpdateMessage(param1:int, param2:String)
      {
         super();
         var_1183 = param1;
         var_1449 = param2;
      }
      
      public function get itemType() : int
      {
         return var_1183;
      }
      
      public function get itemName() : String
      {
         return var_1449;
      }
   }
}
