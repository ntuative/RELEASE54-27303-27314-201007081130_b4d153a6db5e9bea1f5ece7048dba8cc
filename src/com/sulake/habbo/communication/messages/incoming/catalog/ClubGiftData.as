package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubGiftData
   {
       
      
      private var var_1869:Boolean;
      
      private var var_1867:int;
      
      private var _offerId:int;
      
      private var var_1868:Boolean;
      
      public function ClubGiftData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1869 = param1.readBoolean();
         var_1867 = param1.readInteger();
         var_1868 = param1.readBoolean();
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1868;
      }
      
      public function get isVip() : Boolean
      {
         return var_1869;
      }
      
      public function get daysRequired() : int
      {
         return var_1867;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
   }
}
