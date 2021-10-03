package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var var_855:LegacyWallGeometry = null;
      
      private var var_602:SelectedRoomObjectData = null;
      
      private var _roomCategory:int = 0;
      
      private var var_600:TileHeightMap = null;
      
      private var var_1779:String = null;
      
      private var _roomId:int = 0;
      
      private var var_601:SelectedRoomObjectData = null;
      
      private var var_854:RoomCamera = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         _roomId = param1;
         _roomCategory = param2;
         var_855 = new LegacyWallGeometry();
         var_854 = new RoomCamera();
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_602 != null)
         {
            var_602.dispose();
         }
         var_602 = param1;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(var_600 != null)
         {
            var_600.dispose();
         }
         var_600 = param1;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function set worldType(param1:String) : void
      {
         var_1779 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return var_855;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return var_601;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return var_854;
      }
      
      public function dispose() : void
      {
         if(var_600 != null)
         {
            var_600.dispose();
            var_600 = null;
         }
         if(var_855 != null)
         {
            var_855.dispose();
            var_855 = null;
         }
         if(var_854 != null)
         {
            var_854.dispose();
            var_854 = null;
         }
         if(var_602 != null)
         {
            var_602.dispose();
            var_602 = null;
         }
         if(var_601 != null)
         {
            var_601.dispose();
            var_601 = null;
         }
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return var_600;
      }
      
      public function get worldType() : String
      {
         return var_1779;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_601 != null)
         {
            var_601.dispose();
         }
         var_601 = param1;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return var_602;
      }
   }
}
