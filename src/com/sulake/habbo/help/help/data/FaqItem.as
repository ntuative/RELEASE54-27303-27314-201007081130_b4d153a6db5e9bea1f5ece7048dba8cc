package com.sulake.habbo.help.help.data
{
   public class FaqItem
   {
       
      
      private var var_1277:int;
      
      private var var_1276:String;
      
      private var var_2070:String;
      
      private var _index:int;
      
      private var var_2071:Boolean = false;
      
      private var _category:FaqCategory;
      
      public function FaqItem(param1:int, param2:String, param3:int, param4:FaqCategory)
      {
         super();
         var_1277 = param1;
         var_2070 = param2;
         _index = param3;
         _category = param4;
      }
      
      public function get answerText() : String
      {
         return var_1276;
      }
      
      public function get questionId() : int
      {
         return var_1277;
      }
      
      public function get questionText() : String
      {
         return var_2070;
      }
      
      public function set answerText(param1:String) : void
      {
         var_1276 = param1;
         var_2071 = true;
      }
      
      public function get hasAnswer() : Boolean
      {
         return var_2071;
      }
      
      public function get category() : FaqCategory
      {
         return _category;
      }
      
      public function get index() : int
      {
         return _index;
      }
   }
}
