package com.sulake.habbo.communication.messages.incoming.room.engine
{
   import com.sulake.room.utils.Vector3d;
   
   public class SlideObjectMessageData
   {
      
      public static const const_1039:String = "mv";
      
      public static const const_1047:String = "sld";
       
      
      private var var_75:Vector3d;
      
      private var var_1336:String;
      
      private var var_220:Boolean = false;
      
      private var _target:Vector3d;
      
      private var _id:int = 0;
      
      public function SlideObjectMessageData(param1:int, param2:Vector3d, param3:Vector3d, param4:String = null)
      {
         super();
         _id = param1;
         var_75 = param2;
         _target = param3;
         var_1336 = param4;
      }
      
      public function setReadOnly() : void
      {
         var_220 = true;
      }
      
      public function set moveType(param1:String) : void
      {
         if(!var_220)
         {
            var_1336 = param1;
         }
      }
      
      public function get loc() : Vector3d
      {
         return var_75;
      }
      
      public function set target(param1:Vector3d) : void
      {
         if(!var_220)
         {
            _target = param1;
         }
      }
      
      public function set loc(param1:Vector3d) : void
      {
         if(!var_220)
         {
            var_75 = param1;
         }
      }
      
      public function get target() : Vector3d
      {
         return _target;
      }
      
      public function get moveType() : String
      {
         return var_1336;
      }
      
      public function get id() : int
      {
         return _id;
      }
   }
}
