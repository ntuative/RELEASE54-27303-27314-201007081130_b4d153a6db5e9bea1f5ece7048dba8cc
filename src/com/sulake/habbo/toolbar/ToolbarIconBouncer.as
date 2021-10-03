package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2273:Number;
      
      private var var_674:Number = 0;
      
      private var var_2274:Number;
      
      private var var_675:Number;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         var_2273 = param1;
         var_2274 = param2;
      }
      
      public function update() : void
      {
         var_675 += var_2274;
         var_674 += var_675;
         if(var_674 > 0)
         {
            var_674 = 0;
            var_675 = var_2273 * -1 * var_675;
         }
      }
      
      public function reset(param1:int) : void
      {
         var_675 = param1;
         var_674 = 0;
      }
      
      public function get location() : Number
      {
         return var_674;
      }
   }
}
