package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class RoomThumbnailObjectData
   {
       
      
      private var var_1580:int;
      
      private var var_1581:int;
      
      public function RoomThumbnailObjectData()
      {
         super();
      }
      
      public function get pos() : int
      {
         return var_1580;
      }
      
      public function set pos(param1:int) : void
      {
         this.var_1580 = param1;
      }
      
      public function getCopy() : RoomThumbnailObjectData
      {
         var _loc1_:RoomThumbnailObjectData = new RoomThumbnailObjectData();
         _loc1_.var_1580 = this.var_1580;
         _loc1_.var_1581 = this.var_1581;
         return _loc1_;
      }
      
      public function set imgId(param1:int) : void
      {
         this.var_1581 = param1;
      }
      
      public function get imgId() : int
      {
         return var_1581;
      }
   }
}
