package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var var_2415:Boolean;
      
      protected var var_1574:Number;
      
      protected var var_2414:Boolean;
      
      protected var _type:int;
      
      protected var var_2416:Boolean;
      
      protected var var_2206:int;
      
      protected var var_2417:Boolean;
      
      protected var var_1491:String;
      
      protected var var_1974:int;
      
      protected var _id:int;
      
      protected var _ref:int;
      
      protected var var_1507:String;
      
      protected var var_1976:Boolean;
      
      protected var _category:int;
      
      protected var var_1975:int;
      
      protected var var_2418:int;
      
      protected var var_1973:int;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number, param11:int, param12:int, param13:int, param14:int, param15:String, param16:int)
      {
         super();
         _id = param1;
         _type = param2;
         _ref = param3;
         _category = param4;
         var_1976 = param5;
         var_2417 = param6;
         var_2415 = param7;
         var_2414 = param8;
         var_1491 = param9;
         var_1574 = param10;
         var_2418 = param11;
         var_1973 = param12;
         var_1975 = param13;
         var_1974 = param14;
         var_1507 = param15;
         var_2206 = param16;
      }
      
      public function get locked() : Boolean
      {
         return var_2416;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get extra() : Number
      {
         return var_1574;
      }
      
      public function set locked(param1:Boolean) : void
      {
         var_2416 = param1;
      }
      
      public function get ref() : int
      {
         return _ref;
      }
      
      public function get songId() : int
      {
         return var_2206;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get sellable() : Boolean
      {
         return var_2414;
      }
      
      public function get slotId() : String
      {
         return var_1507;
      }
      
      public function get expires() : int
      {
         return var_2418;
      }
      
      public function get creationYear() : int
      {
         return var_1974;
      }
      
      public function get creationDay() : int
      {
         return var_1973;
      }
      
      public function get stuffData() : String
      {
         return var_1491;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tradeable() : Boolean
      {
         return var_2417;
      }
      
      public function get groupable() : Boolean
      {
         return var_1976;
      }
      
      public function get creationMonth() : int
      {
         return var_1975;
      }
      
      public function get recyclable() : Boolean
      {
         return var_2415;
      }
   }
}
