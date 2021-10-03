package com.sulake.habbo.communication.messages.incoming.recycler
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class PrizeLevelMessageData
   {
       
      
      private var var_1853:int;
      
      private var var_1247:int;
      
      private var var_815:Array;
      
      public function PrizeLevelMessageData(param1:IMessageDataWrapper)
      {
         super();
         var_1247 = param1.readInteger();
         var_1853 = param1.readInteger();
         var_815 = new Array();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_815.push(new PrizeMessageData(param1));
            _loc3_++;
         }
      }
      
      public function get probabilityDenominator() : int
      {
         return var_1853;
      }
      
      public function get prizes() : Array
      {
         return var_815;
      }
      
      public function get prizeLevelId() : int
      {
         return var_1247;
      }
   }
}
