package com.sulake.habbo.communication.messages.outgoing.handshake
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class VersionCheckMessageComposer implements IMessageComposer
   {
       
      
      private var var_2142:String;
      
      private var var_1232:String;
      
      private var var_2141:int;
      
      public function VersionCheckMessageComposer(param1:int, param2:String, param3:String)
      {
         super();
         var_2141 = param1;
         var_1232 = param2;
         var_2142 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [var_2141,var_1232,var_2142];
      }
      
      public function dispose() : void
      {
      }
   }
}
