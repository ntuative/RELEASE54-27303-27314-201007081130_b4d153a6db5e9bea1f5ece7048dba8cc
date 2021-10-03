package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_356:Boolean;
      
      private var var_1325:int;
      
      private var var_1504:String;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         var_1325 = param1.readInteger();
         var_1504 = param1.readString();
         var_356 = param1.readBoolean();
      }
      
      public function get visible() : Boolean
      {
         return var_356;
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
