package com.sulake.habbo.navigator
{
   import com.sulake.core.window.components.ITextWindow;
   
   public class CutToWidth implements BinarySearchTest
   {
       
      
      private var var_457:int;
      
      private var var_190:String;
      
      private var var_213:ITextWindow;
      
      public function CutToWidth()
      {
         super();
      }
      
      public function beforeSearch(param1:String, param2:ITextWindow, param3:int) : void
      {
         var_190 = param1;
         var_213 = param2;
         var_457 = param3;
      }
      
      public function test(param1:int) : Boolean
      {
         var_213.text = var_190.substring(0,param1) + "...";
         return var_213.textWidth > var_457;
      }
   }
}
