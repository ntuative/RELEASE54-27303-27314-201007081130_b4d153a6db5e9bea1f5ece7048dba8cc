package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.catalog.HabboCatalog;
   import com.sulake.habbo.catalog.viewer.Offer;
   import com.sulake.habbo.catalog.viewer.widgets.events.SelectProductEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.SetExtraPurchaseParameterEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.WidgetEvent;
   
   public class PurchaseCatalogWidget extends CatalogWidget implements ICatalogWidget
   {
       
      
      private var var_1877:XML;
      
      private var var_1538:ITextWindow;
      
      private var var_1537:ITextWindow;
      
      private var var_1878:XML;
      
      private var var_880:IWindowContainer;
      
      private var var_2451:ITextWindow;
      
      private var var_1880:String = "";
      
      private var var_2523:IButtonWindow;
      
      private var var_1876:XML;
      
      private var var_1539:ITextWindow;
      
      private var var_1879:XML;
      
      private var var_881:IButtonWindow;
      
      private var var_81:Offer;
      
      public function PurchaseCatalogWidget(param1:IWindowContainer)
      {
         super(param1);
      }
      
      private function attachStub(param1:String) : void
      {
         var _loc2_:* = null;
         switch(param1)
         {
            case Offer.const_320:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1878) as IWindowContainer;
               break;
            case Offer.const_426:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1879) as IWindowContainer;
               break;
            case Offer.const_437:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1877) as IWindowContainer;
               break;
            case Offer.const_590:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1876) as IWindowContainer;
               break;
            default:
               Logger.log("Unknown price-type, can\'t attach...undefined");
         }
         if(_loc2_ != null)
         {
            if(var_880 != null)
            {
               _window.removeChild(var_880);
               var_880.dispose();
            }
            var_880 = _loc2_;
            _window.addChild(_loc2_);
            var_880.x = 0;
            var_880.y = 0;
         }
         var_1539 = _window.findChildByName("ctlg_price_credits") as ITextWindow;
         var_1537 = _window.findChildByName("ctlg_price_pixels") as ITextWindow;
         var_1538 = _window.findChildByName("ctlg_price_credits_pixels") as ITextWindow;
         var_2451 = _window.findChildByName("ctlg_special_txt") as ITextWindow;
         var_881 = window.findChildByName("ctlg_buy_button") as IButtonWindow;
         if(var_881 != null)
         {
            var_881.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onPurchase);
            var_881.disable();
         }
      }
      
      private function onPurchase(param1:WindowMouseEvent) : void
      {
         if(var_81 != null)
         {
            Logger.log("Init Purchase: undefined undefined");
            (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(var_81,page,var_1880);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsStub") as XmlAsset;
         if(_loc1_ != null)
         {
            var_1878 = _loc1_.content as XML;
         }
         var _loc2_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetPixelsStub") as XmlAsset;
         if(_loc2_ != null)
         {
            var_1879 = _loc2_.content as XML;
         }
         var _loc3_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsPixelsStub") as XmlAsset;
         if(_loc3_ != null)
         {
            var_1877 = _loc3_.content as XML;
         }
         var _loc4_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsOrCreditsAndPixelsStub") as XmlAsset;
         if(_loc4_ != null)
         {
            var_1876 = _loc4_.content as XML;
         }
         events.addEventListener(WidgetEvent.CWE_SELECT_PRODUCT,onSelectProduct);
         events.addEventListener(WidgetEvent.const_943,onSetParameter);
      }
      
      private function onSetParameter(param1:SetExtraPurchaseParameterEvent) : void
      {
         var_1880 = param1.parameter;
      }
      
      private function onSelectProduct(param1:SelectProductEvent) : void
      {
         var _loc2_:ICoreLocalizationManager = (page.viewer.catalog as HabboCatalog).localization;
         var_81 = param1.offer;
         attachStub(var_81.priceType);
         if(var_1539 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits","credits",String(var_81.priceInCredits));
            var_1539.caption = "${catalog.purchase.price.credits}";
         }
         if(var_1537 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.pixels","pixels",String(var_81.priceInPixels));
            var_1537.caption = "${catalog.purchase.price.pixels}";
         }
         if(var_1538 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits+pixels","credits",String(var_81.priceInCredits));
            _loc2_.registerParameter("catalog.purchase.price.credits+pixels","pixels",String(var_81.priceInPixels));
            var_1538.caption = "${catalog.purchase.price.credits+pixels}";
         }
         if(var_881 != null)
         {
            var_881.enable();
         }
      }
   }
}
