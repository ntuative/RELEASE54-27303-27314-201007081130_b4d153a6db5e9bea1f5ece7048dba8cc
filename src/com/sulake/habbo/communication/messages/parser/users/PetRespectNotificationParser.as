package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.parser.inventory.pets.PetData;
   
   public class PetRespectNotificationParser implements IMessageParser
   {
       
      
      private var var_1773:int;
      
      private var var_1307:PetData;
      
      private var var_2085:int;
      
      public function PetRespectNotificationParser()
      {
         super();
      }
      
      public function get respect() : int
      {
         return var_1773;
      }
      
      public function get petData() : PetData
      {
         return var_1307;
      }
      
      public function flush() : Boolean
      {
         var_1307 = null;
         return true;
      }
      
      public function get petOwnerId() : int
      {
         return var_2085;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1773 = param1.readInteger();
         var_2085 = param1.readInteger();
         var_1307 = new PetData(param1);
         return true;
      }
   }
}
