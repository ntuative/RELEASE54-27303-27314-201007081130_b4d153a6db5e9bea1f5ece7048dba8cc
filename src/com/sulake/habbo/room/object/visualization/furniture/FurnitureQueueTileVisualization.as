package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1087:int = 1;
      
      private static const const_1111:int = 3;
      
      private static const const_1089:int = 2;
      
      private static const const_1088:int = 15;
       
      
      private var var_864:int;
      
      private var var_232:Array;
      
      public function FurnitureQueueTileVisualization()
      {
         var_232 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1089)
         {
            var_232 = new Array();
            var_232.push(const_1087);
            var_864 = const_1088;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(var_864 > 0)
         {
            --var_864;
         }
         if(var_864 == 0)
         {
            if(false)
            {
               super.setAnimation(var_232.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
