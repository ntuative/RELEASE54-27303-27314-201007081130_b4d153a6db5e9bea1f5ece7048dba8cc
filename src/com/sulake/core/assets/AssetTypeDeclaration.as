package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_1762:Class;
      
      private var var_1761:Class;
      
      private var var_1763:String;
      
      private var var_1219:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         var_1763 = param1;
         var_1761 = param2;
         var_1762 = param3;
         if(rest == null)
         {
            var_1219 = new Array();
         }
         else
         {
            var_1219 = rest;
         }
      }
      
      public function get loaderClass() : Class
      {
         return var_1762;
      }
      
      public function get assetClass() : Class
      {
         return var_1761;
      }
      
      public function get mimeType() : String
      {
         return var_1763;
      }
      
      public function get fileTypes() : Array
      {
         return var_1219;
      }
   }
}
