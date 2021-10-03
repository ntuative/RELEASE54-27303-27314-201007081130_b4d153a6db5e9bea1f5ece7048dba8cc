package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_411:uint;
      
      private var var_1052:IUnknown;
      
      private var var_1268:String;
      
      private var var_1053:IID;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         var_1053 = param1;
         var_1268 = getQualifiedClassName(var_1053);
         var_1052 = param2;
         var_411 = 0;
      }
      
      public function get iid() : IID
      {
         return var_1053;
      }
      
      public function get disposed() : Boolean
      {
         return var_1052 == null;
      }
      
      public function get references() : uint
      {
         return var_411;
      }
      
      public function release() : uint
      {
         return references > 0 ? uint(--var_411) : uint(0);
      }
      
      public function get unknown() : IUnknown
      {
         return var_1052;
      }
      
      public function get iis() : String
      {
         return var_1268;
      }
      
      public function reserve() : uint
      {
         return ++var_411;
      }
      
      public function dispose() : void
      {
         var_1053 = null;
         var_1268 = null;
         var_1052 = null;
         var_411 = 0;
      }
   }
}
