package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1842:int;
      
      private var var_2119:String;
      
      private var var_2117:int;
      
      private var var_2115:int;
      
      private var var_765:Boolean;
      
      private var var_2060:Boolean;
      
      private var var_453:int;
      
      private var var_1306:String;
      
      private var var_2056:int;
      
      private var var_1227:int;
      
      private var _ownerName:String;
      
      private var var_809:String;
      
      private var var_2120:int;
      
      private var var_2116:RoomThumbnailData;
      
      private var var_2118:Boolean;
      
      private var var_693:Array;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         var_693 = new Array();
         super();
         var_453 = param1.readInteger();
         var_765 = param1.readBoolean();
         var_809 = param1.readString();
         _ownerName = param1.readString();
         var_2056 = param1.readInteger();
         var_1842 = param1.readInteger();
         var_2120 = param1.readInteger();
         var_1306 = param1.readString();
         var_2117 = param1.readInteger();
         var_2118 = param1.readBoolean();
         var_2115 = param1.readInteger();
         var_1227 = param1.readInteger();
         var_2119 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            var_693.push(_loc4_);
            _loc3_++;
         }
         var_2116 = new RoomThumbnailData(param1);
         var_2060 = param1.readBoolean();
      }
      
      public function get maxUserCount() : int
      {
         return var_2120;
      }
      
      public function get roomName() : String
      {
         return var_809;
      }
      
      public function get userCount() : int
      {
         return var_1842;
      }
      
      public function get score() : int
      {
         return var_2115;
      }
      
      public function get eventCreationTime() : String
      {
         return var_2119;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_2118;
      }
      
      public function get tags() : Array
      {
         return var_693;
      }
      
      public function get allowPets() : Boolean
      {
         return var_2060;
      }
      
      public function get event() : Boolean
      {
         return var_765;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         this.var_693 = null;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get categoryId() : int
      {
         return var_1227;
      }
      
      public function get srchSpecPrm() : int
      {
         return var_2117;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return var_2116;
      }
      
      public function get doorMode() : int
      {
         return var_2056;
      }
      
      public function get flatId() : int
      {
         return var_453;
      }
      
      public function get description() : String
      {
         return var_1306;
      }
   }
}
