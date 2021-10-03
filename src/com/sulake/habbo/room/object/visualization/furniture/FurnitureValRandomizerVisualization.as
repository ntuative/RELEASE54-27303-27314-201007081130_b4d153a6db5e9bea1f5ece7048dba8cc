package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1110:int = 31;
      
      private static const const_1111:int = 32;
      
      private static const const_518:int = 30;
      
      private static const const_783:int = 20;
      
      private static const const_517:int = 10;
       
      
      private var var_643:Boolean = false;
      
      private var var_232:Array;
      
      public function FurnitureValRandomizerVisualization()
      {
         var_232 = new Array();
         super();
         super.setAnimation(const_518);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            if(!var_643)
            {
               var_643 = true;
               var_232 = new Array();
               var_232.push(const_1110);
               var_232.push(const_1111);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_517)
         {
            if(var_643)
            {
               var_643 = false;
               var_232 = new Array();
               if(_direction == 2)
               {
                  var_232.push(const_783 + 5 - param1);
                  var_232.push(const_517 + 5 - param1);
               }
               else
               {
                  var_232.push(const_783 + param1);
                  var_232.push(const_517 + param1);
               }
               var_232.push(const_518);
               return;
            }
            super.setAnimation(const_518);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(11))
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
