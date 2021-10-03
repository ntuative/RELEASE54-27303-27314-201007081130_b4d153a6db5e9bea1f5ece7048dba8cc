package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_707:String = "RWSDPM_SAVE_PRESET";
       
      
      private var _color:uint;
      
      private var var_2194:int;
      
      private var var_2196:int;
      
      private var var_2195:Boolean;
      
      private var var_1179:int;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_707);
         var_2196 = param1;
         var_2194 = param2;
         _color = param3;
         var_1179 = param4;
         var_2195 = param5;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectTypeId() : int
      {
         return var_2194;
      }
      
      public function get presetNumber() : int
      {
         return var_2196;
      }
      
      public function get brightness() : int
      {
         return var_1179;
      }
      
      public function get apply() : Boolean
      {
         return var_2195;
      }
   }
}
