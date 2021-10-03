package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1322:int;
      
      private var var_1255:int;
      
      private var var_1321:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function get messageId() : int
      {
         return var_1322;
      }
      
      public function flush() : Boolean
      {
         var_1255 = 0;
         var_1322 = 0;
         var_1321 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1255;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1322 = param1.readInteger();
         var_1255 = param1.readInteger();
         var_1321 = param1.readString();
         return true;
      }
      
      public function get timestamp() : String
      {
         return var_1321;
      }
   }
}
