package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomSettingsFlatInfo;
   
   public class FlatInfoMessageParser implements IMessageParser
   {
       
      
      private var var_238:RoomSettingsFlatInfo;
      
      public function FlatInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         var_238 = null;
         return true;
      }
      
      public function get flatInfo() : RoomSettingsFlatInfo
      {
         return var_238;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_238 = new RoomSettingsFlatInfo();
         var_238.allowFurniMoving = param1.readInteger() == 1;
         var_238.doorMode = param1.readInteger();
         var_238.id = param1.readInteger();
         var_238.ownerName = param1.readString();
         var_238.type = param1.readString();
         var_238.name = param1.readString();
         var_238.description = param1.readString();
         var_238.showOwnerName = param1.readInteger() == 1;
         var_238.allowTrading = param1.readInteger() == 1;
         var_238.categoryAlertKey = param1.readInteger() == 1;
         return true;
      }
   }
}
