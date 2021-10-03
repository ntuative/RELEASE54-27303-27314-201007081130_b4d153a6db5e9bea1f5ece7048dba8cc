package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1366:int = 2;
      
      public static const const_1652:int = 1;
       
      
      private var var_2278:int;
      
      private var var_2275:int;
      
      private var var_2279:Boolean;
      
      private var var_2276:int;
      
      private var var_1450:String;
      
      private var var_2281:Boolean;
      
      private var var_2282:int;
      
      private var var_2280:int;
      
      private var var_2277:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return var_2275;
      }
      
      public function get isVIP() : Boolean
      {
         return var_2279;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return var_2280;
      }
      
      public function get memberPeriods() : int
      {
         return var_2276;
      }
      
      public function get productName() : String
      {
         return var_1450;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return var_2281;
      }
      
      public function get responseType() : int
      {
         return var_2278;
      }
      
      public function get pastClubDays() : int
      {
         return var_2277;
      }
      
      public function get pastVipDays() : int
      {
         return var_2282;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1450 = param1.readString();
         var_2275 = param1.readInteger();
         var_2276 = param1.readInteger();
         var_2280 = param1.readInteger();
         var_2278 = param1.readInteger();
         var_2281 = param1.readBoolean();
         var_2279 = param1.readBoolean();
         var_2277 = param1.readInteger();
         var_2282 = param1.readInteger();
         return true;
      }
   }
}
