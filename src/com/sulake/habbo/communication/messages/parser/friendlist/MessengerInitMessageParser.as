package com.sulake.habbo.communication.messages.parser.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendCategoryData;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendData;
   
   public class MessengerInitMessageParser implements IMessageParser
   {
       
      
      private var var_2459:int;
      
      private var var_2464:int;
      
      private var var_96:Array;
      
      private var var_246:Array;
      
      private var var_2461:int;
      
      private var var_2460:int;
      
      private var var_2463:int;
      
      private var var_2462:int;
      
      public function MessengerInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_96 = new Array();
         this.var_246 = new Array();
         return true;
      }
      
      public function get extendedFriendLimit() : int
      {
         return this.var_2459;
      }
      
      public function get friends() : Array
      {
         return this.var_246;
      }
      
      public function get normalFriendLimit() : int
      {
         return this.var_2461;
      }
      
      public function get categories() : Array
      {
         return this.var_96;
      }
      
      public function get friendRequestLimit() : int
      {
         return this.var_2464;
      }
      
      public function get userFriendLimit() : int
      {
         return this.var_2462;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc4_:int = 0;
         this.var_2462 = param1.readInteger();
         this.var_2461 = param1.readInteger();
         this.var_2459 = param1.readInteger();
         this.var_2463 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            this.var_96.push(new FriendCategoryData(param1));
            _loc4_++;
         }
         var _loc3_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_246.push(new FriendData(param1));
            _loc4_++;
         }
         this.var_2464 = param1.readInteger();
         this.var_2460 = param1.readInteger();
         return true;
      }
      
      public function get evenMoreExtendedFriendLimit() : int
      {
         return this.var_2463;
      }
      
      public function get friendRequestCount() : int
      {
         return this.var_2460;
      }
   }
}
