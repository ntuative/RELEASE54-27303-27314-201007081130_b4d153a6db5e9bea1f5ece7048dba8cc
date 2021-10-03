package com.sulake.habbo.room.object.visualization.room.publicroom.rasterizer
{
   public class LayoutRasterizerData
   {
       
      
      private var var_1234:XMLList;
      
      public function LayoutRasterizerData(param1:XML)
      {
         super();
         var_1234 = param1.elements.element;
      }
      
      public function get elementList() : XMLList
      {
         return var_1234;
      }
      
      public function dispose() : void
      {
         var_1234 = null;
      }
   }
}
