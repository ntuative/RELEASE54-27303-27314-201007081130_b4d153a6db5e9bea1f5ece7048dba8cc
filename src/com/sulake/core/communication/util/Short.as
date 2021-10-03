package com.sulake.core.communication.util
{
   import flash.utils.ByteArray;
   
   public class Short
   {
       
      
      private var var_797:ByteArray;
      
      public function Short(param1:int)
      {
         super();
         var_797 = new ByteArray();
         var_797.writeShort(param1);
         var_797.position = 0;
      }
      
      public function get value() : int
      {
         var _loc1_:int = 0;
         var_797.position = 0;
         if(false)
         {
            _loc1_ = var_797.readShort();
            var_797.position = 0;
         }
         return _loc1_;
      }
   }
}
