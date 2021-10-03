package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_1646:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1611:String = "ROE_MOUSE_ENTER";
      
      public static const const_497:String = "ROE_MOUSE_MOVE";
      
      public static const const_1706:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_232:String = "ROE_MOUSE_CLICK";
      
      public static const const_431:String = "ROE_MOUSE_DOWN";
       
      
      private var var_2007:Boolean;
      
      private var var_2008:Boolean;
      
      private var var_2004:Boolean;
      
      private var var_2006:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false)
      {
         super(param1,param2,param3,param8,param9);
         var_2004 = param4;
         var_2006 = param5;
         var_2007 = param6;
         var_2008 = param7;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_2008;
      }
      
      public function get altKey() : Boolean
      {
         return var_2004;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_2006;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_2007;
      }
   }
}
