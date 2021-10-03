package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerPreviewMessage extends RoomWidgetMessage
   {
      
      public static const const_653:String = "RWDPM_PREVIEW_DIMMER_PRESET";
       
      
      private var var_1179:int;
      
      private var _color:uint;
      
      private var var_2139:Boolean;
      
      public function RoomWidgetDimmerPreviewMessage(param1:uint, param2:int, param3:Boolean)
      {
         super(const_653);
         _color = param1;
         var_1179 = param2;
         var_2139 = param3;
      }
      
      public function get brightness() : int
      {
         return var_1179;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get bgOnly() : Boolean
      {
         return var_2139;
      }
   }
}
