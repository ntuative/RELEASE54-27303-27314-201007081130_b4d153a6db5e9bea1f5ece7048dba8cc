package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2440:Boolean;
      
      private var var_2441:int;
      
      private var var_2439:Boolean;
      
      private var var_1599:String;
      
      private var var_1225:String;
      
      private var var_1777:int;
      
      private var var_2039:String;
      
      private var var_2438:String;
      
      private var var_2040:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1777 = param1.readInteger();
         this.var_1599 = param1.readString();
         this.var_2039 = param1.readString();
         this.var_2440 = param1.readBoolean();
         this.var_2439 = param1.readBoolean();
         param1.readString();
         this.var_2441 = param1.readInteger();
         this.var_2040 = param1.readString();
         this.var_2438 = param1.readString();
         this.var_1225 = param1.readString();
      }
      
      public function get realName() : String
      {
         return this.var_1225;
      }
      
      public function get avatarName() : String
      {
         return this.var_1599;
      }
      
      public function get avatarId() : int
      {
         return this.var_1777;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2440;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2438;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2040;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2439;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2039;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2441;
      }
   }
}
