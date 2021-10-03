package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PresentOpenedMessageParser implements IMessageParser
   {
       
      
      private var var_1183:String;
      
      private var var_1217:int;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      public function PresentOpenedMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var_1183 = param1.readString();
         var_1217 = param1.readInteger();
         return true;
      }
      
      public function flush() : Boolean
      {
         var_1183 = "";
         var_1217 = 0;
         return true;
      }
      
      public function get itemType() : String
      {
         return var_1183;
      }
      
      public function get classId() : int
      {
         return var_1217;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
   }
}
