package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1837:int;
      
      private var var_1836:String;
      
      private var var_1068:int;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1068 = param1.readInteger();
         this.var_1836 = param1.readString();
         this.var_1837 = int(param1.readString());
      }
      
      public function get requestId() : int
      {
         return this.var_1068;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_1837;
      }
      
      public function get requesterName() : String
      {
         return this.var_1836;
      }
   }
}
