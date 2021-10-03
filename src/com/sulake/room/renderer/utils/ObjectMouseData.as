package com.sulake.room.renderer.utils
{
   public class ObjectMouseData
   {
       
      
      private var var_2005:String = "";
      
      private var var_165:String = "";
      
      public function ObjectMouseData()
      {
         super();
      }
      
      public function set spriteTag(param1:String) : void
      {
         var_2005 = param1;
      }
      
      public function set objectId(param1:String) : void
      {
         var_165 = param1;
      }
      
      public function get spriteTag() : String
      {
         return var_2005;
      }
      
      public function get objectId() : String
      {
         return var_165;
      }
   }
}
