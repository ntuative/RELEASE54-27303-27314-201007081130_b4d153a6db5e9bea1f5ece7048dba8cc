package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_2218:String;
      
      private var var_598:String;
      
      private var var_1507:int;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         var_1507 = param1.readInteger();
         var_2218 = param1.readString();
         var_598 = param1.readString();
      }
      
      public function get gender() : String
      {
         return var_598;
      }
      
      public function get figureString() : String
      {
         return var_2218;
      }
      
      public function get slotId() : int
      {
         return var_1507;
      }
   }
}
