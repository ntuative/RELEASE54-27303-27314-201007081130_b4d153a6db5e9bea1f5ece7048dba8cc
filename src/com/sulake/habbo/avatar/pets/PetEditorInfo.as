package com.sulake.habbo.avatar.pets
{
   public class PetEditorInfo
   {
       
      
      private var var_1946:Boolean;
      
      private var var_1868:Boolean;
      
      public function PetEditorInfo(param1:XML)
      {
         super();
         var_1946 = Boolean(parseInt(param1.@club));
         var_1868 = Boolean(parseInt(param1.@selectable));
      }
      
      public function get isClub() : Boolean
      {
         return var_1946;
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1868;
      }
   }
}
