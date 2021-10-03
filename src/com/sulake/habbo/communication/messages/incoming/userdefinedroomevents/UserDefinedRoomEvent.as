package com.sulake.habbo.communication.messages.incoming.userdefinedroomevents
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class UserDefinedRoomEvent implements IDisposable
   {
       
      
      private var var_1088:Array;
      
      private var _disposed:Boolean;
      
      private var var_1978:int;
      
      private var _id:int;
      
      private var var_231:Array;
      
      public function UserDefinedRoomEvent(param1:IMessageDataWrapper)
      {
         var_231 = new Array();
         var_1088 = new Array();
         super();
         _id = param1.readInteger();
         var_1978 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_1088.push(new TriggerDefinition(param1));
            _loc3_++;
         }
         _loc2_ = param1.readInteger();
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            var_231.push(new ActionDefinition(param1));
            _loc3_++;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get triggers() : Array
      {
         return var_1088;
      }
      
      public function get propagation() : int
      {
         return var_1978;
      }
      
      public function get actions() : Array
      {
         return var_231;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         var_231 = null;
         var_1088 = null;
      }
   }
}
