package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   
   public class AssetLoaderEvent extends Event
   {
      
      public static const const_967:String = "AssetLoaderEventUnload";
      
      public static const const_42:String = "AssetLoaderEventError";
      
      public static const const_938:String = "AssetLoaderEventOpen";
      
      public static const const_1045:String = "AssetLoaderEventProgress";
      
      public static const const_1030:String = "AssetLoaderEventStatus";
      
      public static const const_29:String = "AssetLoaderEventComplete";
       
      
      private var var_156:int;
      
      public function AssetLoaderEvent(param1:String, param2:int)
      {
         var_156 = param2;
         super(param1,false,false);
      }
      
      public function get status() : int
      {
         return var_156;
      }
      
      override public function clone() : Event
      {
         return new AssetLoaderEvent(type,var_156);
      }
   }
}
