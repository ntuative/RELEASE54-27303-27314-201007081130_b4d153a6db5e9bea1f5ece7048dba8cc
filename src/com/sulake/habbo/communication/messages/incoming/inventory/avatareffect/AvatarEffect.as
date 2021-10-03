package com.sulake.habbo.communication.messages.incoming.inventory.avatareffect
{
   public class AvatarEffect
   {
       
      
      private var var_2354:int;
      
      private var var_1320:int;
      
      private var _type:int;
      
      private var var_2355:int;
      
      public function AvatarEffect()
      {
         super();
      }
      
      public function get inactiveEffectsInInventory() : int
      {
         return var_2355;
      }
      
      public function set secondsLeftIfActive(param1:int) : void
      {
         var_2354 = param1;
      }
      
      public function get duration() : int
      {
         return var_1320;
      }
      
      public function set inactiveEffectsInInventory(param1:int) : void
      {
         var_2355 = param1;
      }
      
      public function set duration(param1:int) : void
      {
         var_1320 = param1;
      }
      
      public function get secondsLeftIfActive() : int
      {
         return var_2354;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
   }
}
