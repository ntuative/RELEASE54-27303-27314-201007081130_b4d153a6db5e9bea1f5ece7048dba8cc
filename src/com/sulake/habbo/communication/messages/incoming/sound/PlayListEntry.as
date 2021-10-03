package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_2206:int;
      
      private var var_2247:int = 0;
      
      private var var_2249:String;
      
      private var var_2250:int;
      
      private var var_2248:String;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         var_2206 = param1;
         var_2250 = param2;
         var_2248 = param3;
         var_2249 = param4;
      }
      
      public function get length() : int
      {
         return var_2250;
      }
      
      public function get name() : String
      {
         return var_2248;
      }
      
      public function get creator() : String
      {
         return var_2249;
      }
      
      public function get startPlayHeadPos() : int
      {
         return var_2247;
      }
      
      public function get id() : int
      {
         return var_2206;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         var_2247 = param1;
      }
   }
}
