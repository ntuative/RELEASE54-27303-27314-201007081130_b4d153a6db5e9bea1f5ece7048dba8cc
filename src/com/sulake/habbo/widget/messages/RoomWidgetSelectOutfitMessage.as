package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_960:String = "select_outfit";
       
      
      private var var_2246:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_960);
         var_2246 = param1;
      }
      
      public function get outfitId() : int
      {
         return var_2246;
      }
   }
}
