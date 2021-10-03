package com.sulake.habbo.widget.events
{
   public class RoomWidgetStickieDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_619:String = "RWSDUE_STICKIE_DATA";
       
      
      private var var_213:String;
      
      private var var_716:String;
      
      private var var_1534:String;
      
      private var var_165:int = -1;
      
      private var _controller:Boolean;
      
      public function RoomWidgetStickieDataUpdateEvent(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Boolean, param7:Boolean = false, param8:Boolean = false)
      {
         super(param1,param7,param8);
         var_165 = param2;
         var_1534 = param3;
         var_213 = param4;
         var_716 = param5;
         _controller = param6;
      }
      
      public function get objectType() : String
      {
         return var_1534;
      }
      
      public function get colorHex() : String
      {
         return var_716;
      }
      
      public function get text() : String
      {
         return var_213;
      }
      
      public function get objectId() : int
      {
         return var_165;
      }
      
      public function get controller() : Boolean
      {
         return _controller;
      }
   }
}
