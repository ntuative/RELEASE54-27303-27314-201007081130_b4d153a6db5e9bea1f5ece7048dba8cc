package com.sulake.habbo.room.utils
{
   public class PublicRoomWorldData
   {
       
      
      private var var_1928:Number = 1.0;
      
      private var var_152:Number = 1.0;
      
      private var var_1779:String = "";
      
      public function PublicRoomWorldData(param1:String, param2:Number, param3:Number)
      {
         super();
         var_1779 = param1;
         var_152 = param2;
         var_1928 = param3;
      }
      
      public function get scale() : Number
      {
         return var_152;
      }
      
      public function get heightScale() : Number
      {
         return var_1928;
      }
   }
}
