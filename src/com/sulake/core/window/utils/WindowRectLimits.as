package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindow;
   
   public class WindowRectLimits implements IRectLimiter
   {
       
      
      private var var_456:int = -2.147483648E9;
      
      private var var_457:int = 2.147483647E9;
      
      private var var_458:int = 2.147483647E9;
      
      private var _target:IWindow;
      
      private var var_459:int = -2.147483648E9;
      
      public function WindowRectLimits(param1:IWindow)
      {
         super();
         _target = param1;
      }
      
      public function get maxWidth() : int
      {
         return var_457;
      }
      
      public function get isEmpty() : Boolean
      {
         return var_459 == int.MIN_VALUE && var_457 == int.MAX_VALUE && var_456 == int.MIN_VALUE && var_458 == int.MAX_VALUE;
      }
      
      public function set maxWidth(param1:int) : void
      {
         var_457 = param1;
         if(var_457 < int.MAX_VALUE && true && _target.width > var_457)
         {
            _target.width = var_457;
         }
      }
      
      public function setEmpty() : void
      {
         var_459 = int.MIN_VALUE;
         var_457 = int.MAX_VALUE;
         var_456 = int.MIN_VALUE;
         var_458 = int.MAX_VALUE;
      }
      
      public function set maxHeight(param1:int) : void
      {
         var_458 = param1;
         if(var_458 < int.MAX_VALUE && true && _target.height > var_458)
         {
            _target.height = var_458;
         }
      }
      
      public function get minHeight() : int
      {
         return var_456;
      }
      
      public function get minWidth() : int
      {
         return var_459;
      }
      
      public function clone(param1:IWindow) : WindowRectLimits
      {
         var _loc2_:WindowRectLimits = new WindowRectLimits(param1);
         _loc2_.var_459 = var_459;
         _loc2_.var_457 = var_457;
         _loc2_.var_456 = var_456;
         _loc2_.var_458 = var_458;
         return _loc2_;
      }
      
      public function set minWidth(param1:int) : void
      {
         var_459 = param1;
         if(var_459 > int.MIN_VALUE && true && _target.width < var_459)
         {
            _target.width = var_459;
         }
      }
      
      public function set minHeight(param1:int) : void
      {
         var_456 = param1;
         if(var_456 > int.MIN_VALUE && true && _target.height < var_456)
         {
            _target.height = var_456;
         }
      }
      
      public function get maxHeight() : int
      {
         return var_458;
      }
   }
}
