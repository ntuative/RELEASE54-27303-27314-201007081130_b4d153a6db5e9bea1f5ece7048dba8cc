package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureBottleVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1111:int = -1;
      
      private static const const_783:int = 20;
      
      private static const const_517:int = 9;
       
      
      private var var_643:Boolean = false;
      
      private var var_232:Array;
      
      public function FurnitureBottleVisualization()
      {
         var_232 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!var_643)
            {
               var_643 = true;
               var_232 = new Array();
               var_232.push(const_1111);
               return;
            }
         }
         if(param1 >= 0 && param1 <= 7)
         {
            if(var_643)
            {
               var_643 = false;
               var_232 = new Array();
               var_232.push(const_783);
               var_232.push(const_517 + param1);
               var_232.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(0))
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
