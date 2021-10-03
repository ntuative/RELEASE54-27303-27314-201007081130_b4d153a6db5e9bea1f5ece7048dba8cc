package com.sulake.habbo.communication.messages.outgoing.recycler
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RecycleItemsMessageComposer implements IMessageComposer
   {
       
      
      private var var_867:Array;
      
      public function RecycleItemsMessageComposer(param1:Array)
      {
         super();
         var_867 = new Array();
         var_867.push(param1.length);
         var_867 = var_867.concat(param1);
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return var_867;
      }
   }
}
