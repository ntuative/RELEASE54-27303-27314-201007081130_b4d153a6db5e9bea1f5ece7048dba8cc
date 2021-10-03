package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var var_402:String;
      
      private var var_1223:String;
      
      private var var_1224:String;
      
      private var var_1227:int;
      
      private var var_598:int;
      
      private var var_1225:String;
      
      private var _name:String;
      
      private var var_1226:Boolean;
      
      private var var_741:Boolean;
      
      private var _id:int;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_598 = param1.readInteger();
         this.var_741 = param1.readBoolean();
         this.var_1226 = param1.readBoolean();
         this.var_402 = param1.readString();
         this.var_1227 = param1.readInteger();
         this.var_1224 = param1.readString();
         this.var_1223 = param1.readString();
         this.var_1225 = param1.readString();
      }
      
      public function get gender() : int
      {
         return var_598;
      }
      
      public function get realName() : String
      {
         return var_1225;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get motto() : String
      {
         return var_1224;
      }
      
      public function get categoryId() : int
      {
         return var_1227;
      }
      
      public function get online() : Boolean
      {
         return var_741;
      }
      
      public function get followingAllowed() : Boolean
      {
         return var_1226;
      }
      
      public function get lastAccess() : String
      {
         return var_1223;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get figure() : String
      {
         return var_402;
      }
   }
}
