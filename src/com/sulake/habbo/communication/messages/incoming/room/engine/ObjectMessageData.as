package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ObjectMessageData
   {
       
      
      private var var_511:int = 0;
      
      private var _data:String = "";
      
      private var var_1574:int = -1;
      
      private var var_38:int = 0;
      
      private var _type:int = 0;
      
      private var var_625:int = 0;
      
      private var var_2541:String = "";
      
      private var var_1825:int = 0;
      
      private var _id:int = 0;
      
      private var var_220:Boolean = false;
      
      private var var_237:int = 0;
      
      private var var_2204:String = null;
      
      private var var_91:Number = 0;
      
      private var _y:Number = 0;
      
      private var var_90:Number = 0;
      
      public function ObjectMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_220)
         {
            _type = param1;
         }
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_220)
         {
            _y = param1;
         }
      }
      
      public function get dir() : int
      {
         return var_237;
      }
      
      public function get extra() : int
      {
         return var_1574;
      }
      
      public function get state() : int
      {
         return var_38;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_220)
         {
            var_237 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_220)
         {
            var_91 = param1;
         }
      }
      
      public function set extra(param1:int) : void
      {
         if(!var_220)
         {
            var_1574 = param1;
         }
      }
      
      public function get z() : Number
      {
         return var_90;
      }
      
      public function set state(param1:int) : void
      {
         if(!var_220)
         {
            var_38 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function get expiryTime() : int
      {
         return var_1825;
      }
      
      public function get staticClass() : String
      {
         return var_2204;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function set expiryTime(param1:int) : void
      {
         if(!var_220)
         {
            var_1825 = param1;
         }
      }
      
      public function set data(param1:String) : void
      {
         if(!var_220)
         {
            _data = param1;
         }
      }
      
      public function set staticClass(param1:String) : void
      {
         if(!var_220)
         {
            var_2204 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_220 = true;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!var_220)
         {
            var_511 = param1;
         }
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!var_220)
         {
            var_625 = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_220)
         {
            var_90 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return var_511;
      }
      
      public function get x() : Number
      {
         return var_91;
      }
      
      public function get sizeY() : int
      {
         return var_625;
      }
   }
}
