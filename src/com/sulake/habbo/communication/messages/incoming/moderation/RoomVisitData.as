package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_809:String;
      
      private var var_2318:int;
      
      private var var_1649:Boolean;
      
      private var _roomId:int;
      
      private var var_2319:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         var_1649 = param1.readBoolean();
         _roomId = param1.readInteger();
         var_809 = param1.readString();
         var_2319 = param1.readInteger();
         var_2318 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return var_1649;
      }
      
      public function get roomName() : String
      {
         return var_809;
      }
      
      public function get enterMinute() : int
      {
         return var_2318;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get enterHour() : int
      {
         return var_2319;
      }
   }
}
