package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1769:int;
      
      private var var_402:String;
      
      private var var_1758:int;
      
      private var var_1773:int;
      
      private var var_1774:int;
      
      private var var_2172:int;
      
      private var _nutrition:int;
      
      private var var_1388:int;
      
      private var var_2173:int;
      
      private var var_2170:int;
      
      private var _energy:int;
      
      private var _name:String;
      
      private var _ownerName:String;
      
      private var var_1772:int;
      
      private var var_2171:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get level() : int
      {
         return var_1758;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get maxEnergy() : int
      {
         return var_2172;
      }
      
      public function flush() : Boolean
      {
         var_1388 = -1;
         return true;
      }
      
      public function get maxLevel() : int
      {
         return var_2173;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return var_2170;
      }
      
      public function get maxNutrition() : int
      {
         return var_2171;
      }
      
      public function get figure() : String
      {
         return var_402;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get respect() : int
      {
         return var_1773;
      }
      
      public function get petId() : int
      {
         return var_1388;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var_1388 = param1.readInteger();
         _name = param1.readString();
         var_1758 = param1.readInteger();
         var_2173 = param1.readInteger();
         var_1774 = param1.readInteger();
         var_2170 = param1.readInteger();
         _energy = param1.readInteger();
         var_2172 = param1.readInteger();
         _nutrition = param1.readInteger();
         var_2171 = param1.readInteger();
         var_402 = param1.readString();
         var_1773 = param1.readInteger();
         var_1772 = param1.readInteger();
         var_1769 = param1.readInteger();
         _ownerName = param1.readString();
         return true;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get experience() : int
      {
         return var_1774;
      }
      
      public function get ownerId() : int
      {
         return var_1772;
      }
      
      public function get age() : int
      {
         return var_1769;
      }
   }
}
