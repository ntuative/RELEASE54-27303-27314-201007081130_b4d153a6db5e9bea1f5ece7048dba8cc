package com.sulake.habbo.help.cfh.data
{
   import com.sulake.core.utils.Map;
   
   public class UserRegistry
   {
      
      private static const const_1175:int = 80;
       
      
      private var var_575:Map;
      
      private var var_809:String = "";
      
      private var var_1439:Array;
      
      public function UserRegistry()
      {
         var_575 = new Map();
         var_1439 = new Array();
         super();
      }
      
      private function addRoomNameForMissing() : void
      {
         var _loc1_:* = null;
         while(false)
         {
            _loc1_ = var_575.getValue(var_1439.shift());
            if(_loc1_ != null)
            {
               _loc1_.roomName = var_809;
            }
         }
      }
      
      public function registerUser(param1:int, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:* = null;
         if(var_575.getValue(param1) != null)
         {
            var_575.remove(param1);
         }
         if(param3)
         {
            _loc4_ = new UserRegistryItem(param1,param2,var_809);
         }
         else
         {
            _loc4_ = new UserRegistryItem(param1,param2);
         }
         if(param3 && var_809 == "")
         {
            var_1439.push(param1);
         }
         var_575.add(param1,_loc4_);
         purgeUserIndex();
      }
      
      public function getRegistry() : Map
      {
         return var_575;
      }
      
      public function unregisterRoom() : void
      {
         var_809 = "";
      }
      
      private function purgeUserIndex() : void
      {
         var _loc1_:int = 0;
         while(var_575.length > const_1175)
         {
            _loc1_ = var_575.getKey(0);
            var_575.remove(_loc1_);
         }
      }
      
      public function registerRoom(param1:String) : void
      {
         var_809 = param1;
         if(var_809 != "")
         {
            addRoomNameForMissing();
         }
      }
   }
}
