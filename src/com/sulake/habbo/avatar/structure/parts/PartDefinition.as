package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var _removeSetType:String;
      
      private var var_1502:int = -1;
      
      private var var_1214:Boolean;
      
      private var var_1213:String;
      
      private var var_1755:String;
      
      public function PartDefinition(param1:XML)
      {
         super();
         var_1755 = String(param1["set-type"]);
         var_1213 = String(param1["flipped-set-type"]);
         _removeSetType = String(param1["remove-set-type"]);
         var_1214 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return var_1502 >= 0;
      }
      
      public function get flippedSetType() : String
      {
         return var_1213;
      }
      
      public function get staticId() : int
      {
         return var_1502;
      }
      
      public function set staticId(param1:int) : void
      {
         var_1502 = param1;
      }
      
      public function get appendToFigure() : Boolean
      {
         return var_1214;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         var_1214 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         var_1213 = param1;
      }
      
      public function get setType() : String
      {
         return var_1755;
      }
      
      public function get removeSetType() : String
      {
         return _removeSetType;
      }
   }
}
