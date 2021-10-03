package com.sulake.room.messages
{
   import com.sulake.room.utils.IVector3d;
   
   public class RoomObjectUpdateMessage
   {
       
      
      protected var var_75:IVector3d;
      
      protected var var_237:IVector3d;
      
      public function RoomObjectUpdateMessage(param1:IVector3d, param2:IVector3d)
      {
         super();
         var_75 = param1;
         var_237 = param2;
      }
      
      public function get loc() : IVector3d
      {
         return var_75;
      }
      
      public function get dir() : IVector3d
      {
         return var_237;
      }
   }
}
