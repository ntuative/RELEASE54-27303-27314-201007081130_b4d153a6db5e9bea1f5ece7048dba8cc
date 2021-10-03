package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1376:IID;
      
      private var _isDisposed:Boolean;
      
      private var var_948:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         var_1376 = param1;
         var_948 = new Array();
         _isDisposed = false;
      }
      
      public function get receivers() : Array
      {
         return var_948;
      }
      
      public function get identifier() : IID
      {
         return var_1376;
      }
      
      public function get disposed() : Boolean
      {
         return _isDisposed;
      }
      
      public function dispose() : void
      {
         if(!_isDisposed)
         {
            _isDisposed = true;
            var_1376 = null;
            while(false)
            {
               var_948.pop();
            }
            var_948 = null;
         }
      }
   }
}
