package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var var_90:Number = 0;
      
      private var _data:String = "";
      
      private var var_1574:int = 0;
      
      private var var_38:int = 0;
      
      private var _type:int = 0;
      
      private var _y:Number = 0;
      
      private var var_2371:Boolean = false;
      
      private var var_2541:String = "";
      
      private var _id:int = 0;
      
      private var var_220:Boolean = false;
      
      private var var_237:String = "";
      
      private var var_2373:int = 0;
      
      private var var_2372:int = 0;
      
      private var var_2009:int = 0;
      
      private var var_2003:int = 0;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         _id = param1;
         _type = param2;
         var_2371 = param3;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_220)
         {
            _y = param1;
         }
      }
      
      public function get isOldFormat() : Boolean
      {
         return var_2371;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_220)
         {
            _type = param1;
         }
      }
      
      public function get dir() : String
      {
         return var_237;
      }
      
      public function get state() : int
      {
         return var_38;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!var_220)
         {
            var_2009 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!var_220)
         {
            var_2373 = param1;
         }
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!var_220)
         {
            var_2372 = param1;
         }
      }
      
      public function set dir(param1:String) : void
      {
         if(!var_220)
         {
            var_237 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!var_220)
         {
            var_2003 = param1;
         }
      }
      
      public function set state(param1:int) : void
      {
         if(!var_220)
         {
            var_38 = param1;
         }
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get localX() : Number
      {
         return var_2009;
      }
      
      public function set data(param1:String) : void
      {
         if(!var_220)
         {
            _data = param1;
         }
      }
      
      public function get wallX() : Number
      {
         return var_2373;
      }
      
      public function get wallY() : Number
      {
         return var_2372;
      }
      
      public function get localY() : Number
      {
         return var_2003;
      }
      
      public function setReadOnly() : void
      {
         var_220 = true;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_90;
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_220)
         {
            var_90 = param1;
         }
      }
   }
}
