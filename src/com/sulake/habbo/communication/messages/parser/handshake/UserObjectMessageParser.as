package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var var_402:String;
      
      private var var_2454:String;
      
      private var var_2453:int;
      
      private var var_2456:int;
      
      private var var_662:String;
      
      private var var_1225:String;
      
      private var _name:String;
      
      private var var_529:int;
      
      private var var_944:int;
      
      private var var_2452:int;
      
      private var _respectTotal:int;
      
      private var var_2455:String;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function get directMail() : int
      {
         return this.var_2456;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get realName() : String
      {
         return this.var_1225;
      }
      
      public function get customData() : String
      {
         return this.var_2454;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_529;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2453;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2455;
      }
      
      public function get figure() : String
      {
         return this.var_402;
      }
      
      public function get respectTotal() : int
      {
         return this._respectTotal;
      }
      
      public function get sex() : String
      {
         return this.var_662;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_402 = param1.readString();
         this.var_662 = param1.readString();
         this.var_2454 = param1.readString();
         this.var_1225 = param1.readString();
         this.var_2452 = param1.readInteger();
         this.var_2455 = param1.readString();
         this.var_2453 = param1.readInteger();
         this.var_2456 = param1.readInteger();
         this._respectTotal = param1.readInteger();
         this.var_944 = param1.readInteger();
         this.var_529 = param1.readInteger();
         return true;
      }
      
      public function get tickets() : int
      {
         return this.var_2452;
      }
      
      public function get respectLeft() : int
      {
         return this.var_944;
      }
   }
}
