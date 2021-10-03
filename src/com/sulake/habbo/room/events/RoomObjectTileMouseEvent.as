package com.sulake.habbo.room.events
{
   import com.sulake.room.events.RoomObjectMouseEvent;
   
   public class RoomObjectTileMouseEvent extends RoomObjectMouseEvent
   {
       
      
      private var var_2151:Number;
      
      private var var_2152:Number;
      
      private var var_2153:Number;
      
      public function RoomObjectTileMouseEvent(param1:String, param2:int, param3:String, param4:Number, param5:Number, param6:Number, param7:Boolean = false, param8:Boolean = false)
      {
         super(param1,param2,param3,param7,param8);
         var_2151 = param4;
         var_2152 = param5;
         var_2153 = param6;
      }
      
      public function get tileX() : Number
      {
         return var_2151;
      }
      
      public function get tileY() : Number
      {
         return var_2152;
      }
      
      public function get tileZ() : Number
      {
         return var_2153;
      }
   }
}
