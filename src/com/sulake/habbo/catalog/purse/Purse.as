package com.sulake.habbo.catalog.purse
{
   public class Purse implements IPurse
   {
       
      
      private var var_2344:int = 0;
      
      private var var_1708:int = 0;
      
      private var var_2279:Boolean = false;
      
      private var var_2212:int = 0;
      
      private var var_2282:int = 0;
      
      private var var_1707:int = 0;
      
      private var var_2277:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function get clubDays() : int
      {
         return var_1708;
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1708 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         var_2279 = param1;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         var_2277 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return var_1708 > 0 || var_1707 > 0;
      }
      
      public function get credits() : int
      {
         return var_2212;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         var_2282 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return var_1707;
      }
      
      public function get isVIP() : Boolean
      {
         return var_2279;
      }
      
      public function get pastClubDays() : int
      {
         return var_2277;
      }
      
      public function get pastVipDays() : int
      {
         return var_2282;
      }
      
      public function set pixels(param1:int) : void
      {
         var_2344 = param1;
      }
      
      public function get pixels() : int
      {
         return var_2344;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1707 = param1;
      }
      
      public function set credits(param1:int) : void
      {
         var_2212 = param1;
      }
   }
}
