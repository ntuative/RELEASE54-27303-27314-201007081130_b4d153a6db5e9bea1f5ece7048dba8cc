package com.sulake.habbo.communication.messages.incoming.recycler
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class PrizeMessageData
   {
       
      
      private var var_1617:int;
      
      private var var_1790:String;
      
      public function PrizeMessageData(param1:IMessageDataWrapper)
      {
         super();
         var_1790 = param1.readString();
         var_1617 = param1.readInteger();
      }
      
      public function get productItemTypeId() : int
      {
         return var_1617;
      }
      
      public function get productItemType() : String
      {
         return var_1790;
      }
   }
}
