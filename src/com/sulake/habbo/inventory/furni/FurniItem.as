package com.sulake.habbo.inventory.furni
{
   import flash.display.BitmapData;
   
   public class FurniItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_1823:int;
      
      private var var_1827:Boolean;
      
      private var var_2206:int;
      
      private var var_1491:String;
      
      private var var_2205:Boolean = false;
      
      private var var_1825:int;
      
      private var var_484:int;
      
      private var var_1183:String;
      
      private var var_1507:String;
      
      private var _image:BitmapData;
      
      private var _objId:int;
      
      private var var_1217:int;
      
      private var var_1826:Boolean;
      
      private var var_2207:int;
      
      public function FurniItem(param1:int, param2:String, param3:int, param4:int, param5:String, param6:Boolean, param7:Boolean, param8:int, param9:String, param10:int)
      {
         super();
         var_1823 = param1;
         var_1183 = param2;
         _objId = param3;
         var_1217 = param4;
         var_1491 = param5;
         var_1827 = param6;
         var_1826 = param7;
         var_1825 = param8;
         var_1507 = param9;
         var_2206 = param10;
         var_484 = -1;
      }
      
      public function get songId() : int
      {
         return var_2206;
      }
      
      public function get iconCallbackId() : int
      {
         return var_484;
      }
      
      public function get expiryTime() : int
      {
         return var_1825;
      }
      
      public function set prevCallbackId(param1:int) : void
      {
         var_2207 = param1;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         var_2205 = param1;
      }
      
      public function set iconCallbackId(param1:int) : void
      {
         var_484 = param1;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1826;
      }
      
      public function get slotId() : String
      {
         return var_1507;
      }
      
      public function get classId() : int
      {
         return var_1217;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1827;
      }
      
      public function get stuffData() : String
      {
         return var_1491;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function get stripId() : int
      {
         return var_1823;
      }
      
      public function get isLocked() : Boolean
      {
         return var_2205;
      }
      
      public function get prevCallbackId() : int
      {
         return var_2207;
      }
      
      public function get iconImage() : BitmapData
      {
         return _image;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get itemType() : String
      {
         return var_1183;
      }
   }
}
