package com.sulake.habbo.widget.infostand
{
   import com.sulake.habbo.widget.events.RoomWidgetPetInfoUpdateEvent;
   import flash.display.BitmapData;
   
   public class InfoStandPetData
   {
       
      
      private var var_1758:int;
      
      private var var_1774:int;
      
      private var var_1775:int;
      
      private var _type:int;
      
      private var var_1388:int = -1;
      
      private var var_1770:int;
      
      private var _nutrition:int;
      
      private var var_1776:int;
      
      private var _energy:int;
      
      private var var_1911:int;
      
      private var var_1771:int;
      
      private var var_2360:int;
      
      private var var_1769:int;
      
      private var _petRespect:int;
      
      private var _canOwnerBeKicked:Boolean;
      
      private var _image:BitmapData;
      
      private var _ownerName:String;
      
      private var var_2361:Boolean;
      
      private var _name:String = "";
      
      private var var_1772:int;
      
      public function InfoStandPetData()
      {
         super();
      }
      
      public function get isOwnPet() : Boolean
      {
         return var_2361;
      }
      
      public function get level() : int
      {
         return var_1758;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get experienceMax() : int
      {
         return var_1776;
      }
      
      public function get id() : int
      {
         return var_1388;
      }
      
      public function get nutritionMax() : int
      {
         return var_1775;
      }
      
      public function get ownerId() : int
      {
         return var_1772;
      }
      
      public function setData(param1:RoomWidgetPetInfoUpdateEvent) : void
      {
         _name = param1.name;
         var_1388 = param1.id;
         _type = param1.petType;
         var_1911 = param1.petRace;
         _image = param1.image;
         var_2361 = param1.isOwnPet;
         var_1772 = param1.ownerId;
         _ownerName = param1.ownerName;
         _canOwnerBeKicked = param1.canOwnerBeKicked;
         var_1758 = param1.level;
         var_1770 = param1.levelMax;
         var_1774 = param1.experience;
         var_1776 = param1.experienceMax;
         _energy = param1.energy;
         var_1771 = param1.energyMax;
         _nutrition = param1.nutrition;
         var_1775 = param1.nutritionMax;
         _petRespect = param1.petRespect;
         var_2360 = param1.roomIndex;
         var_1769 = param1.age;
      }
      
      public function get roomIndex() : int
      {
         return var_2360;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get energyMax() : int
      {
         return var_1771;
      }
      
      public function get levelMax() : int
      {
         return var_1770;
      }
      
      public function get petRespect() : int
      {
         return _petRespect;
      }
      
      public function get race() : int
      {
         return var_1911;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get canOwnerBeKicked() : Boolean
      {
         return _canOwnerBeKicked;
      }
      
      public function get experience() : int
      {
         return var_1774;
      }
      
      public function get age() : int
      {
         return var_1769;
      }
   }
}
