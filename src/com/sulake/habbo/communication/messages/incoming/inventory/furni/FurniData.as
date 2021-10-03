package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_1491:String;
      
      private var var_1183:String;
      
      private var var_1824:Boolean;
      
      private var var_1574:int;
      
      private var var_1823:int;
      
      private var var_1828:Boolean;
      
      private var var_1507:String = "";
      
      private var var_1827:Boolean;
      
      private var _category:int;
      
      private var _objId:int;
      
      private var var_1217:int;
      
      private var var_1826:Boolean;
      
      private var var_2206:int = -1;
      
      private var var_1825:int;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         var_1823 = param1;
         var_1183 = param2;
         _objId = param3;
         var_1217 = param4;
         _category = param5;
         var_1491 = param6;
         var_1824 = param7;
         var_1827 = param8;
         var_1826 = param9;
         var_1828 = param10;
         var_1825 = param11;
      }
      
      public function get slotId() : String
      {
         return var_1507;
      }
      
      public function get extra() : int
      {
         return var_1574;
      }
      
      public function get classId() : int
      {
         return var_1217;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get isSellable() : Boolean
      {
         return var_1828;
      }
      
      public function get isGroupable() : Boolean
      {
         return var_1824;
      }
      
      public function get stripId() : int
      {
         return var_1823;
      }
      
      public function get stuffData() : String
      {
         return var_1491;
      }
      
      public function get songId() : int
      {
         return var_2206;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         var_1507 = param1;
         var_1574 = param2;
      }
      
      public function get itemType() : String
      {
         return var_1183;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get expiryTime() : int
      {
         return var_1825;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1826;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1827;
      }
   }
}
