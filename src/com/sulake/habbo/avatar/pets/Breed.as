package com.sulake.habbo.avatar.pets
{
   public class Breed extends PetEditorInfo implements IBreed
   {
       
      
      private var var_598:String;
      
      private var _id:int;
      
      private var var_2132:String = "";
      
      private var var_2135:int;
      
      private var var_2133:String;
      
      private var var_2134:Boolean;
      
      public function Breed(param1:XML)
      {
         super(param1);
         _id = parseInt(param1.@id);
         var_2135 = parseInt(param1.@pattern);
         var_598 = String(param1.@gender);
         var_2134 = Boolean(parseInt(param1.@colorable));
         var_2132 = String(param1.@localizationKey);
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get localizationKey() : String
      {
         return var_2132;
      }
      
      public function get isColorable() : Boolean
      {
         return var_2134;
      }
      
      public function get gender() : String
      {
         return var_598;
      }
      
      public function get patternId() : int
      {
         return var_2135;
      }
      
      public function get avatarFigureString() : String
      {
         return var_2133;
      }
      
      public function set avatarFigureString(param1:String) : void
      {
         var_2133 = param1;
      }
   }
}
