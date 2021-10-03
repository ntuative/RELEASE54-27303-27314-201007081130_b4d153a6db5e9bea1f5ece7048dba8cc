package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_1940:int;
      
      private var var_1941:String;
      
      private var var_1939:int;
      
      private var _disposed:Boolean;
      
      private var var_1937:int;
      
      private var var_1938:String;
      
      private var var_1325:int;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         var_1938 = param1.readString();
         var_1940 = param1.readInteger();
         var_1939 = param1.readInteger();
         var_1941 = param1.readString();
         var_1937 = param1.readInteger();
         var_1325 = param1.readInteger();
      }
      
      public function get maxUsers() : int
      {
         return var_1937;
      }
      
      public function get worldId() : int
      {
         return var_1939;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
      }
      
      public function get unitPropertySet() : String
      {
         return var_1938;
      }
      
      public function get unitPort() : int
      {
         return var_1940;
      }
      
      public function get castLibs() : String
      {
         return var_1941;
      }
      
      public function get nodeId() : int
      {
         return var_1325;
      }
   }
}
