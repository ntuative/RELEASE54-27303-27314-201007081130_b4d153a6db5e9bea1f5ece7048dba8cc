package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_865:String = "price_type_none";
      
      public static const const_494:String = "pricing_model_multi";
      
      public static const const_320:String = "price_type_credits";
      
      public static const const_437:String = "price_type_credits_and_pixels";
      
      public static const const_440:String = "pricing_model_bundle";
      
      public static const const_428:String = "pricing_model_single";
      
      public static const const_590:String = "price_type_credits_or_credits_and_pixels";
      
      public static const const_1445:String = "pricing_model_unknown";
      
      public static const const_426:String = "price_type_pixels";
       
      
      private var var_2210:int;
      
      private var var_971:int;
      
      private var _offerId:int;
      
      private var var_972:int;
      
      private var var_450:String;
      
      private var var_663:String;
      
      private var var_447:ICatalogPage;
      
      private var var_449:IProductContainer;
      
      private var var_1404:String;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         _offerId = param1.offerId;
         var_1404 = param1.localizationId;
         var_971 = param1.priceInCredits;
         var_972 = param1.priceInPixels;
         var_447 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         analyzePricingModel(_loc3_);
         analyzePriceType();
         createProductContainer(_loc3_);
      }
      
      public function get pricingModel() : String
      {
         return var_450;
      }
      
      public function get page() : ICatalogPage
      {
         return var_447;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         var_2210 = param1;
      }
      
      public function get productContainer() : IProductContainer
      {
         return var_449;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_972;
      }
      
      public function dispose() : void
      {
         _offerId = 0;
         var_1404 = "";
         var_971 = 0;
         var_972 = 0;
         var_447 = null;
         if(var_449 != null)
         {
            var_449.dispose();
            var_449 = null;
         }
      }
      
      public function get previewCallbackId() : int
      {
         return var_2210;
      }
      
      public function get priceInCredits() : int
      {
         return var_971;
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               var_450 = const_428;
            }
            else
            {
               var_450 = const_494;
            }
         }
         else if(param1.length > 1)
         {
            var_450 = const_440;
         }
         else
         {
            var_450 = const_1445;
         }
      }
      
      public function get priceType() : String
      {
         return var_663;
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(var_450)
         {
            case const_428:
               var_449 = new SingleProductContainer(this,param1);
               break;
            case const_494:
               var_449 = new MultiProductContainer(this,param1);
               break;
            case const_440:
               var_449 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + var_450);
         }
      }
      
      public function get localizationId() : String
      {
         return var_1404;
      }
      
      private function analyzePriceType() : void
      {
         if(var_971 > 0 && var_972 > 0)
         {
            var_663 = const_437;
         }
         else if(var_971 > 0)
         {
            var_663 = const_320;
         }
         else if(var_972 > 0)
         {
            var_663 = const_426;
         }
         else
         {
            var_663 = const_865;
         }
      }
   }
}
