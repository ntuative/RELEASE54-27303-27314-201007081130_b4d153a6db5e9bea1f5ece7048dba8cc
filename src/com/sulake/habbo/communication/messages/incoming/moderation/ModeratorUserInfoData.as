package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var var_2396:int;
      
      private var var_2395:int;
      
      private var var_2398:int;
      
      private var _userName:String;
      
      private var var_2399:int;
      
      private var var_2397:int;
      
      private var var_2394:int;
      
      private var _userId:int;
      
      private var var_741:Boolean;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         _userId = param1.readInteger();
         _userName = param1.readString();
         var_2397 = param1.readInteger();
         var_2399 = param1.readInteger();
         var_741 = param1.readBoolean();
         var_2398 = param1.readInteger();
         var_2395 = param1.readInteger();
         var_2396 = param1.readInteger();
         var_2394 = param1.readInteger();
      }
      
      public function get banCount() : int
      {
         return var_2394;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
      
      public function get online() : Boolean
      {
         return var_741;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return var_2399;
      }
      
      public function get abusiveCfhCount() : int
      {
         return var_2395;
      }
      
      public function get cautionCount() : int
      {
         return var_2396;
      }
      
      public function get cfhCount() : int
      {
         return var_2398;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return var_2397;
      }
      
      public function get userName() : String
      {
         return _userName;
      }
   }
}
