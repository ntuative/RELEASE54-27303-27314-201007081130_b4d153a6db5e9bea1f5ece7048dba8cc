package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1405:String = "F";
      
      public static const const_1009:String = "M";
       
      
      private var var_91:Number = 0;
      
      private var var_402:String = "";
      
      private var var_2353:int = 0;
      
      private var var_1864:String = "";
      
      private var var_1865:int = 0;
      
      private var var_1815:int = 0;
      
      private var var_1863:String = "";
      
      private var var_662:String = "";
      
      private var _id:int = 0;
      
      private var var_220:Boolean = false;
      
      private var var_237:int = 0;
      
      private var var_2352:String = "";
      
      private var _name:String = "";
      
      private var var_1817:int = 0;
      
      private var _y:Number = 0;
      
      private var var_90:Number = 0;
      
      public function UserMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get z() : Number
      {
         return var_90;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get dir() : int
      {
         return var_237;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_220)
         {
            var_237 = param1;
         }
      }
      
      public function set name(param1:String) : void
      {
         if(!var_220)
         {
            _name = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get userType() : int
      {
         return var_2353;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!var_220)
         {
            var_1865 = param1;
         }
      }
      
      public function get subType() : String
      {
         return var_2352;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!var_220)
         {
            var_1863 = param1;
         }
      }
      
      public function set subType(param1:String) : void
      {
         if(!var_220)
         {
            var_2352 = param1;
         }
      }
      
      public function set xp(param1:int) : void
      {
         if(!var_220)
         {
            var_1815 = param1;
         }
      }
      
      public function set figure(param1:String) : void
      {
         if(!var_220)
         {
            var_402 = param1;
         }
      }
      
      public function set userType(param1:int) : void
      {
         if(!var_220)
         {
            var_2353 = param1;
         }
      }
      
      public function set sex(param1:String) : void
      {
         if(!var_220)
         {
            var_662 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return var_1865;
      }
      
      public function get groupID() : String
      {
         return var_1863;
      }
      
      public function set webID(param1:int) : void
      {
         if(!var_220)
         {
            var_1817 = param1;
         }
      }
      
      public function set custom(param1:String) : void
      {
         if(!var_220)
         {
            var_1864 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_220 = true;
      }
      
      public function get sex() : String
      {
         return var_662;
      }
      
      public function get figure() : String
      {
         return var_402;
      }
      
      public function get webID() : int
      {
         return var_1817;
      }
      
      public function get custom() : String
      {
         return var_1864;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_220)
         {
            _y = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_220)
         {
            var_90 = param1;
         }
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_220)
         {
            var_91 = param1;
         }
      }
      
      public function get x() : Number
      {
         return var_91;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get xp() : int
      {
         return var_1815;
      }
   }
}
