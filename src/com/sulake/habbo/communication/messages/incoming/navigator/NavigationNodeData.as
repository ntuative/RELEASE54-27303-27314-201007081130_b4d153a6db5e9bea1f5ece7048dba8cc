package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class NavigationNodeData
   {
       
      
      private var var_1325:int;
      
      private var var_1504:String;
      
      public function NavigationNodeData(param1:int, param2:String)
      {
         super();
         var_1325 = param1;
         var_1504 = param2;
         Logger.log("READ NODE: " + var_1325 + ", " + var_1504);
      }
      
      public function get nodeName() : String
      {
         return var_1504;
      }
      
      public function get nodeId() : int
      {
         return var_1325;
      }
   }
}
