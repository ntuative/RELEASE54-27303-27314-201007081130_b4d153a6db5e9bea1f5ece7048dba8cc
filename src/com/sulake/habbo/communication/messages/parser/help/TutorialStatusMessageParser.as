package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1110:Boolean;
      
      private var var_1111:Boolean;
      
      private var var_1112:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return var_1110;
      }
      
      public function get hasChangedName() : Boolean
      {
         return var_1111;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1112 = param1.readBoolean();
         var_1111 = param1.readBoolean();
         var_1110 = param1.readBoolean();
         return true;
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return var_1112;
      }
      
      public function flush() : Boolean
      {
         var_1112 = false;
         var_1111 = false;
         var_1110 = false;
         return true;
      }
   }
}
