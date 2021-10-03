package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStructList implements IDisposable
   {
       
      
      private var var_52:Array;
      
      function InterfaceStructList()
      {
         var_52 = new Array();
         super();
      }
      
      public function insert(param1:InterfaceStruct) : uint
      {
         var_52.push(param1);
         return var_52.length;
      }
      
      public function remove(param1:uint) : InterfaceStruct
      {
         var _loc2_:* = null;
         if(param1 < var_52.length)
         {
            _loc2_ = var_52[param1];
            var_52.splice(param1,1);
            return _loc2_;
         }
         throw new Error("Index out of range!");
      }
      
      public function get length() : uint
      {
         return var_52.length;
      }
      
      public function mapStructsByInterface(param1:IID, param2:Array) : uint
      {
         var _loc5_:* = null;
         var _loc3_:String = getQualifiedClassName(param1);
         var _loc4_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            _loc5_ = var_52[_loc7_] as InterfaceStruct;
            if(_loc5_.iis == _loc3_)
            {
               param2.push(_loc5_);
               _loc4_++;
            }
            _loc7_++;
         }
         return _loc4_;
      }
      
      public function getStructByImplementor(param1:IUnknown) : InterfaceStruct
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc2_ = var_52[_loc4_] as InterfaceStruct;
            if(_loc2_.unknown == param1)
            {
               return _loc2_;
            }
            _loc4_++;
         }
         return null;
      }
      
      public function get disposed() : Boolean
      {
         return var_52 == null;
      }
      
      public function getIndexByInterface(param1:IID) : int
      {
         var _loc3_:* = null;
         var _loc2_:String = getQualifiedClassName(param1);
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc3_ = var_52[_loc5_] as InterfaceStruct;
            if(_loc3_.iis == _loc2_)
            {
               return _loc5_;
            }
            _loc5_++;
         }
         return -1;
      }
      
      public function dispose() : void
      {
         var _loc2_:* = null;
         var _loc1_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_)
         {
            _loc2_ = var_52.pop();
            _loc2_.dispose();
            _loc3_++;
         }
         var_52 = null;
      }
      
      public function getStructByIndex(param1:uint) : InterfaceStruct
      {
         return param1 < var_52.length ? var_52[param1] : null;
      }
      
      public function getTotalReferenceCount() : uint
      {
         var _loc2_:* = null;
         var _loc1_:* = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc2_ = var_52[_loc4_] as InterfaceStruct;
            _loc1_ += _loc2_.references;
            _loc4_++;
         }
         return _loc1_;
      }
      
      public function getIndexByImplementor(param1:IUnknown) : int
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc2_ = var_52[_loc4_] as InterfaceStruct;
            if(_loc2_.unknown == param1)
            {
               return _loc4_;
            }
            _loc4_++;
         }
         return -1;
      }
      
      public function mapStructsByImplementor(param1:IUnknown, param2:Array) : uint
      {
         var _loc4_:* = null;
         var _loc3_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_)
         {
            _loc4_ = var_52[_loc6_] as InterfaceStruct;
            if(_loc4_.unknown == param1)
            {
               param2.push(_loc4_);
               _loc3_++;
            }
            _loc6_++;
         }
         return _loc3_;
      }
      
      public function getStructByInterface(param1:IID) : InterfaceStruct
      {
         var _loc3_:* = null;
         var _loc2_:String = getQualifiedClassName(param1);
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc3_ = var_52[_loc5_] as InterfaceStruct;
            if(_loc3_.iis == _loc2_)
            {
               return _loc3_;
            }
            _loc5_++;
         }
         return null;
      }
      
      public function find(param1:IID) : IUnknown
      {
         var _loc4_:* = null;
         var _loc2_:String = getQualifiedClassName(param1);
         var _loc3_:int = 0;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc4_ = var_52[_loc5_] as InterfaceStruct;
            if(_loc4_.iis == _loc2_)
            {
               return _loc4_.unknown;
            }
            _loc5_++;
         }
         return null;
      }
   }
}
