package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_124:RoomData;
      
      private var _disposed:Boolean;
      
      private var var_1842:int;
      
      private var var_453:int;
      
      private var var_765:RoomData;
      
      private var var_1772:int;
      
      private var _ownerName:String;
      
      private var var_2155:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         var_453 = param1.readInteger();
         var_1842 = param1.readInteger();
         var_2155 = param1.readBoolean();
         var_1772 = param1.readInteger();
         _ownerName = param1.readString();
         var_124 = new RoomData(param1);
         var_765 = new RoomData(param1);
      }
      
      public function get userCount() : int
      {
         return var_1842;
      }
      
      public function get event() : RoomData
      {
         return var_765;
      }
      
      public function get room() : RoomData
      {
         return var_124;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(var_124 != null)
         {
            var_124.dispose();
            var_124 = null;
         }
         if(var_765 != null)
         {
            var_765.dispose();
            var_765 = null;
         }
      }
      
      public function get flatId() : int
      {
         return var_453;
      }
      
      public function get ownerId() : int
      {
         return var_1772;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return var_2155;
      }
   }
}
