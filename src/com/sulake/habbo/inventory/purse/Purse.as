package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_2331:Boolean = false;
      
      private var var_2333:int = 0;
      
      private var var_1708:int = 0;
      
      private var var_2332:int = 0;
      
      private var var_2279:Boolean = false;
      
      private var var_1628:int = 0;
      
      private var var_1707:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function set creditBalance(param1:int) : void
      {
         var_1628 = Math.max(0,param1);
      }
      
      public function get clubPastPeriods() : int
      {
         return var_2333;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return var_2331;
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         var_2331 = param1;
      }
      
      public function get isVIP() : Boolean
      {
         return var_2279;
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         var_2333 = Math.max(0,param1);
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1708 = Math.max(0,param1);
      }
      
      public function get creditBalance() : int
      {
         return var_1628;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         var_2279 = param1;
      }
      
      public function set pixelBalance(param1:int) : void
      {
         var_2332 = Math.max(0,param1);
      }
      
      public function get clubDays() : int
      {
         return var_1708;
      }
      
      public function get pixelBalance() : int
      {
         return var_2332;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1707 = Math.max(0,param1);
      }
      
      public function get clubPeriods() : int
      {
         return var_1707;
      }
   }
}
