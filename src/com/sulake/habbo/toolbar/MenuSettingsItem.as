package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_1930:Array;
      
      private var var_1931:String;
      
      private var var_1932:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         var_1931 = param1;
         var_1930 = param2;
         var_1932 = param3;
      }
      
      public function get menuId() : String
      {
         return var_1931;
      }
      
      public function get yieldList() : Array
      {
         return var_1930;
      }
      
      public function get lockToIcon() : Boolean
      {
         return var_1932;
      }
   }
}
