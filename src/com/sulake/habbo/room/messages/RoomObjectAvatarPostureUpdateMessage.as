package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarPostureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_2220:String;
      
      private var var_966:String;
      
      public function RoomObjectAvatarPostureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_2220 = param1;
         var_966 = param2;
      }
      
      public function get postureType() : String
      {
         return var_2220;
      }
      
      public function get parameter() : String
      {
         return var_966;
      }
   }
}
