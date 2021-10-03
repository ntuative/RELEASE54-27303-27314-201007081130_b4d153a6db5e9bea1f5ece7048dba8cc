package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_866:String = "inventory_badges";
      
      public static const const_1428:String = "inventory_clothes";
      
      public static const const_1281:String = "inventory_furniture";
      
      public static const const_669:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_916:String = "inventory_effects";
       
      
      private var var_2038:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_669);
         var_2038 = param1;
      }
      
      public function get inventoryType() : String
      {
         return var_2038;
      }
   }
}
