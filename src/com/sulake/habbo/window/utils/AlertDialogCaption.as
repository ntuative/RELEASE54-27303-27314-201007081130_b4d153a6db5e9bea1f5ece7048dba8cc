package com.sulake.habbo.window.utils
{
   class AlertDialogCaption implements ICaption
   {
       
      
      private var var_356:Boolean;
      
      private var var_213:String;
      
      private var var_1457:String;
      
      function AlertDialogCaption(param1:String, param2:String, param3:Boolean)
      {
         super();
         var_213 = param1;
         var_1457 = param2;
         var_356 = param3;
      }
      
      public function get toolTip() : String
      {
         return var_1457;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var_356 = param1;
      }
      
      public function get text() : String
      {
         return var_213;
      }
      
      public function get visible() : Boolean
      {
         return var_356;
      }
      
      public function set toolTip(param1:String) : void
      {
         var_1457 = param1;
      }
      
      public function set text(param1:String) : void
      {
         var_213 = param1;
      }
   }
}
