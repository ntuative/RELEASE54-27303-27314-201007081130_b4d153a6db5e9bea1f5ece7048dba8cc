package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_208:String = "e";
      
      public static const const_82:String = "i";
      
      public static const const_78:String = "s";
       
      
      private var var_1080:String;
      
      private var var_1302:String;
      
      private var var_1300:int;
      
      private var var_1850:int;
      
      private var var_1079:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         var_1302 = param1.readString();
         var_1850 = param1.readInteger();
         var_1080 = param1.readString();
         var_1079 = param1.readInteger();
         var_1300 = param1.readInteger();
      }
      
      public function get productCount() : int
      {
         return var_1079;
      }
      
      public function get productType() : String
      {
         return var_1302;
      }
      
      public function get expiration() : int
      {
         return var_1300;
      }
      
      public function get furniClassId() : int
      {
         return var_1850;
      }
      
      public function get extraParam() : String
      {
         return var_1080;
      }
   }
}
