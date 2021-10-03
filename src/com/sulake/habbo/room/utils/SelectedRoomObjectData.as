package com.sulake.habbo.room.utils
{
   import com.sulake.habbo.room.ISelectedRoomObjectData;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class SelectedRoomObjectData implements ISelectedRoomObjectData
   {
       
      
      private var var_75:Vector3d = null;
      
      private var _id:int = 0;
      
      private var var_237:Vector3d = null;
      
      private var var_1935:int = 0;
      
      private var var_2145:String = null;
      
      private var _category:int = 0;
      
      private var var_2144:String = "";
      
      public function SelectedRoomObjectData(param1:int, param2:int, param3:String, param4:IVector3d, param5:IVector3d, param6:int = 0, param7:String = null)
      {
         super();
         _id = param1;
         _category = param2;
         var_2144 = param3;
         var_75 = new Vector3d();
         var_75.assign(param4);
         var_237 = new Vector3d();
         var_237.assign(param5);
         var_1935 = param6;
         var_2145 = param7;
      }
      
      public function get loc() : Vector3d
      {
         return var_75;
      }
      
      public function get typeId() : int
      {
         return var_1935;
      }
      
      public function get dir() : Vector3d
      {
         return var_237;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get instanceData() : String
      {
         return var_2145;
      }
      
      public function get operation() : String
      {
         return var_2144;
      }
      
      public function dispose() : void
      {
         var_75 = null;
         var_237 = null;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
