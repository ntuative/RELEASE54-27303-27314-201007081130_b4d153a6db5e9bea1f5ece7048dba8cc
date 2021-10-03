package com.sulake.habbo.communication.messages.incoming.userdefinedroomevents
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class Triggerable
   {
       
      
      private var var_1391:String;
      
      private var var_1639:String;
      
      private var var_1904:int;
      
      private var var_1905:int;
      
      private var var_326:int;
      
      public function Triggerable(param1:IMessageDataWrapper)
      {
         super();
         var_326 = param1.readInteger();
         var_1391 = param1.readString();
         var_1639 = param1.readString();
         var_1905 = param1.readInteger();
         var_1904 = param1.readInteger();
      }
      
      public function get params() : String
      {
         return var_1639;
      }
      
      public function get cooldownPeriod() : int
      {
         return var_1904;
      }
      
      public function get performCount() : int
      {
         return var_1905;
      }
      
      public function get stuffId() : int
      {
         return var_326;
      }
      
      public function get stuffName() : String
      {
         return var_1391;
      }
   }
}
