package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1601:int = 9;
      
      public static const const_1656:int = 4;
      
      public static const const_1520:int = 1;
      
      public static const const_1288:int = 10;
      
      public static const const_1558:int = 2;
      
      public static const const_1391:int = 7;
      
      public static const const_1200:int = 11;
      
      public static const const_1679:int = 3;
      
      public static const const_1192:int = 8;
      
      public static const const_1191:int = 5;
      
      public static const const_1588:int = 6;
      
      public static const const_1403:int = 12;
       
      
      private var var_1760:String;
      
      private var _roomId:int;
      
      private var var_1255:int;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get info() : String
      {
         return var_1760;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _roomId = param1.readInteger();
         var_1255 = param1.readInteger();
         var_1760 = param1.readString();
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1255;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
