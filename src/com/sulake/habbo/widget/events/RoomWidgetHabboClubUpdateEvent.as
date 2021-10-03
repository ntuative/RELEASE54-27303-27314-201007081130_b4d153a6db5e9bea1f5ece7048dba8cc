package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_234:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_1764:Boolean = false;
      
      private var var_1766:int = 0;
      
      private var var_1767:int = 0;
      
      private var var_1768:int;
      
      private var var_1765:int = 0;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_234,param6,param7);
         var_1765 = param1;
         var_1767 = param2;
         var_1766 = param3;
         var_1764 = param4;
         var_1768 = param5;
      }
      
      public function get clubLevel() : int
      {
         return var_1768;
      }
      
      public function get pastPeriods() : int
      {
         return var_1766;
      }
      
      public function get periodsLeft() : int
      {
         return var_1767;
      }
      
      public function get daysLeft() : int
      {
         return var_1765;
      }
      
      public function get allowClubDances() : Boolean
      {
         return var_1764;
      }
   }
}
