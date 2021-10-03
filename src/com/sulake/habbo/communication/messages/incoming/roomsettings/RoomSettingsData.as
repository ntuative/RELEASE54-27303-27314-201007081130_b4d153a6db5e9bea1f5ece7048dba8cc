package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_432:int = 0;
      
      public static const const_134:int = 2;
      
      public static const const_176:int = 1;
      
      public static const const_699:Array = ["open","closed","password"];
       
      
      private var _name:String;
      
      private var var_2057:Boolean;
      
      private var var_2062:Boolean;
      
      private var var_2054:int;
      
      private var var_2061:Array;
      
      private var var_2059:int;
      
      private var var_2060:Boolean;
      
      private var var_1306:String;
      
      private var var_2055:int;
      
      private var var_2058:Boolean;
      
      private var var_2056:int;
      
      private var var_1227:int;
      
      private var _roomId:int;
      
      private var var_693:Array;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get maximumVisitors() : int
      {
         return var_2055;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         var_2055 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         var_2058 = param1;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function get tags() : Array
      {
         return var_693;
      }
      
      public function get allowPets() : Boolean
      {
         return var_2060;
      }
      
      public function set controllerCount(param1:int) : void
      {
         var_2059 = param1;
      }
      
      public function set roomId(param1:int) : void
      {
         _roomId = param1;
      }
      
      public function set controllers(param1:Array) : void
      {
         var_2061 = param1;
      }
      
      public function set tags(param1:Array) : void
      {
         var_693 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return var_2057;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return var_2062;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return var_2054;
      }
      
      public function get categoryId() : int
      {
         return var_1227;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         var_2060 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return var_2058;
      }
      
      public function get controllerCount() : int
      {
         return var_2059;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get controllers() : Array
      {
         return var_2061;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_2056 = param1;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         var_2057 = param1;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         var_2062 = param1;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         var_2054 = param1;
      }
      
      public function get doorMode() : int
      {
         return var_2056;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1227 = param1;
      }
      
      public function set description(param1:String) : void
      {
         var_1306 = param1;
      }
      
      public function get description() : String
      {
         return var_1306;
      }
   }
}
