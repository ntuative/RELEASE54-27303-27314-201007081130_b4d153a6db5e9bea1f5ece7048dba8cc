package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_2232:int;
      
      private var var_454:Boolean;
      
      private var var_2233:Boolean;
      
      private var var_978:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2233 = param1.readBoolean();
         if(var_2233)
         {
            var_2232 = param1.readInteger();
            var_454 = param1.readBoolean();
         }
         else
         {
            var_978 = new PublicRoomShortData(param1);
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         if(var_978 != null)
         {
            var_978.dispose();
            var_978 = null;
         }
         return true;
      }
      
      public function get guestRoomId() : int
      {
         return var_2232;
      }
      
      public function get owner() : Boolean
      {
         return var_454;
      }
      
      public function get guestRoom() : Boolean
      {
         return var_2233;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return var_978;
      }
   }
}
