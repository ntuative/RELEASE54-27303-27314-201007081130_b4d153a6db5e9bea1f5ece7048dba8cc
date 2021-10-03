package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var var_402:String = "";
      
      private var var_1864:String = "";
      
      private var var_1865:int = 0;
      
      private var var_1815:int = 0;
      
      private var _type:int = 0;
      
      private var var_1863:String = "";
      
      private var var_662:String = "";
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var var_1817:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set groupStatus(param1:int) : void
      {
         var_1865 = param1;
      }
      
      public function set groupID(param1:String) : void
      {
         var_1863 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set figure(param1:String) : void
      {
         var_402 = param1;
      }
      
      public function set sex(param1:String) : void
      {
         var_662 = param1;
      }
      
      public function get groupStatus() : int
      {
         return var_1865;
      }
      
      public function set webID(param1:int) : void
      {
         var_1817 = param1;
      }
      
      public function get groupID() : String
      {
         return var_1863;
      }
      
      public function set custom(param1:String) : void
      {
         var_1864 = param1;
      }
      
      public function get figure() : String
      {
         return var_402;
      }
      
      public function get sex() : String
      {
         return var_662;
      }
      
      public function get custom() : String
      {
         return var_1864;
      }
      
      public function get webID() : int
      {
         return var_1817;
      }
      
      public function set xp(param1:int) : void
      {
         var_1815 = param1;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function get xp() : int
      {
         return var_1815;
      }
   }
}
