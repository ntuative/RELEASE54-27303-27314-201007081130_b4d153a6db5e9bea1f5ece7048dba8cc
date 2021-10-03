package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PublicSpaceCastLibsMessageParser implements IMessageParser
   {
       
      
      private var var_1940:int;
      
      private var var_1941:String;
      
      private var var_1325:int;
      
      public function PublicSpaceCastLibsMessageParser()
      {
         super();
      }
      
      public function get unitPort() : int
      {
         return var_1940;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get castLibs() : String
      {
         return var_1941;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1325 = param1.readInteger();
         this.var_1941 = param1.readString();
         this.var_1940 = param1.readInteger();
         return true;
      }
      
      public function get nodeId() : int
      {
         return var_1325;
      }
   }
}
