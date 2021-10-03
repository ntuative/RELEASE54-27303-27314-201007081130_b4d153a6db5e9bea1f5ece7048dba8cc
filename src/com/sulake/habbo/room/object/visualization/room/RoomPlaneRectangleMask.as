package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_1965:Number = 0.0;
      
      private var var_1745:Number = 0.0;
      
      private var var_1744:Number = 0.0;
      
      private var var_1964:Number = 0.0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         var_1745 = param1;
         var_1744 = param2;
         var_1965 = param3;
         var_1964 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return var_1745;
      }
      
      public function get leftSideLength() : Number
      {
         return var_1965;
      }
      
      public function get rightSideLoc() : Number
      {
         return var_1744;
      }
      
      public function get rightSideLength() : Number
      {
         return var_1964;
      }
   }
}
