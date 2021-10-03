package com.sulake.habbo.communication.messages.outgoing.room.engine
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class MoveObjectMessageComposer implements IMessageComposer
   {
       
      
      private var _direction:int;
      
      private var var_91:int;
      
      private var _roomId:int;
      
      private var _roomCategory:int = 0;
      
      private var var_165:int;
      
      private var _y:int;
      
      public function MoveObjectMessageComposer(param1:int, param2:int, param3:int, param4:int, param5:int = 0, param6:int = 0)
      {
         super();
         var_165 = param1;
         var_91 = param2;
         _y = param3;
         _direction = param4;
         _roomId = param5;
         _roomCategory = param6;
      }
      
      public function getMessageArray() : Array
      {
         return [var_165,var_91,_y,_direction];
      }
      
      public function dispose() : void
      {
      }
   }
}
