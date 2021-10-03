package com.sulake.core.utils.debug
{
   import com.sulake.core.runtime.IDisposable;
   import flash.utils.Dictionary;
   
   public class GarbageMonitor implements IDisposable
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_796:Dictionary;
      
      public function GarbageMonitor()
      {
         super();
         var_796 = new Dictionary(true);
      }
      
      public function dispose() : void
      {
         var _loc1_:* = undefined;
         if(!_disposed)
         {
            for each(_loc1_ in var_796)
            {
               delete var_796[_loc1_];
            }
            var_796 = null;
            _disposed = true;
         }
      }
      
      public function insert(param1:Object, param2:String = null) : void
      {
         var_796[param1] = param2 == null ? param1.toString() : param2;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get list() : Array
      {
         var _loc2_:* = undefined;
         var _loc1_:Array = new Array();
         for each(_loc2_ in var_796)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
   }
}
