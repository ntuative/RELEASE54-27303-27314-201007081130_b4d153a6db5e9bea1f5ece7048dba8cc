package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetReceivedMessageParser implements IMessageParser
   {
       
      
      private var var_1031:PetData;
      
      private var var_1498:Boolean;
      
      public function PetReceivedMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1498 = param1.readBoolean();
         var_1031 = new PetData(param1);
         Logger.log("Got PetReceived: " + var_1498 + ", " + var_1031.id + ", " + var_1031.name + ", " + pet.figure + ", " + var_1031.type);
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get boughtAsGift() : Boolean
      {
         return var_1498;
      }
      
      public function get pet() : PetData
      {
         return var_1031;
      }
   }
}
