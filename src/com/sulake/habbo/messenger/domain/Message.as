package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_677:int = 2;
      
      public static const const_995:int = 6;
      
      public static const const_661:int = 1;
      
      public static const const_562:int = 3;
      
      public static const const_894:int = 4;
      
      public static const const_710:int = 5;
       
      
      private var var_1848:String;
      
      private var var_1042:int;
      
      private var var_1847:String;
      
      private var _type:int;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         _type = param1;
         var_1042 = param2;
         var_1847 = param3;
         var_1848 = param4;
      }
      
      public function get time() : String
      {
         return var_1848;
      }
      
      public function get senderId() : int
      {
         return var_1042;
      }
      
      public function get messageText() : String
      {
         return var_1847;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
