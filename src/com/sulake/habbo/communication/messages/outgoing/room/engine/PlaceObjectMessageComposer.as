package com.sulake.habbo.communication.messages.outgoing.room.engine
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.habbo.room.object.RoomObjectCategoryEnum;
   
   public class PlaceObjectMessageComposer implements IMessageComposer
   {
       
      
      private var var_165:int;
      
      private var var_237:int = 0;
      
      private var _roomId:int;
      
      private var var_91:int = 0;
      
      private var _y:int = 0;
      
      private var var_1899:int;
      
      private var var_2032:String;
      
      private var _roomCategory:int;
      
      public function PlaceObjectMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:int, param6:int, param7:int = 0, param8:int = 0)
      {
         super();
         var_165 = param1;
         var_1899 = param2;
         var_2032 = param3;
         var_91 = param4;
         _y = param5;
         var_237 = param6;
         _roomId = param7;
         _roomCategory = param8;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         switch(var_1899)
         {
            case RoomObjectCategoryEnum.const_28:
               return [var_165 + " " + var_91 + " " + _y + " " + var_237];
            case RoomObjectCategoryEnum.const_26:
               return [var_165 + " " + var_2032];
            default:
               return [];
         }
      }
   }
}
