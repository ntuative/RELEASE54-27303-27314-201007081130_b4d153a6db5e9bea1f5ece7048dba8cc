package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1911:String;
      
      private var var_402:String;
      
      private var var_598:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         var_402 = param1;
         var_598 = param2;
         var_1911 = param3;
      }
      
      public function get race() : String
      {
         return var_1911;
      }
      
      public function get figure() : String
      {
         return var_402;
      }
      
      public function get gender() : String
      {
         return var_598;
      }
   }
}
