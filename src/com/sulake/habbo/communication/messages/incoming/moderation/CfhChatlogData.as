package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_2087:int;
      
      private var var_1132:int;
      
      private var var_2149:int;
      
      private var var_1648:int;
      
      private var var_124:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         var_1648 = param1.readInteger();
         var_2149 = param1.readInteger();
         var_1132 = param1.readInteger();
         var_2087 = param1.readInteger();
         var_124 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + var_1648);
      }
      
      public function get chatRecordId() : int
      {
         return var_2087;
      }
      
      public function get reportedUserId() : int
      {
         return var_1132;
      }
      
      public function get callerUserId() : int
      {
         return var_2149;
      }
      
      public function get callId() : int
      {
         return var_1648;
      }
      
      public function get room() : RoomChatlogData
      {
         return var_124;
      }
   }
}
