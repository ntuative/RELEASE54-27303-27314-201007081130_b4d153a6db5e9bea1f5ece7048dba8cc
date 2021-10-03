package com.sulake.habbo.widget.memenu
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.events.WindowEvent;
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public class MeMenuSoundSettingsSlider
   {
       
      
      private var _sliderContainer:IWindowContainer;
      
      private var var_999:MeMenuSoundSettingsView;
      
      private var var_1097:Number = 1.0;
      
      private var var_635:BitmapData;
      
      private var var_634:BitmapData;
      
      private var var_1598:int;
      
      private var var_740:Number = 0.0;
      
      public function MeMenuSoundSettingsSlider(param1:MeMenuSoundSettingsView, param2:IWindowContainer, param3:IAssetLibrary, param4:Number = 0.0, param5:Number = 1.0)
      {
         super();
         var_999 = param1;
         _sliderContainer = param2;
         var_740 = param4;
         var_1097 = param5;
         storeAssets(param3);
         displaySlider();
      }
      
      private function getSliderPosition(param1:Number) : int
      {
         return int(var_1598 * (Number(param1 - var_740) / (var_1097 - var_740)));
      }
      
      private function displaySlider() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(_sliderContainer == null)
         {
            return;
         }
         _loc2_ = _sliderContainer.findChildByName("slider_base") as IBitmapWrapperWindow;
         if(_loc2_ != null && var_635 != null)
         {
            _loc2_.bitmap = new BitmapData(var_635.width,var_635.height,true,16777215);
            _loc2_.bitmap.copyPixels(var_635,var_635.rect,new Point(0,0),null,null,true);
         }
         _loc1_ = _sliderContainer.findChildByName("slider_movement_area") as IWindowContainer;
         if(_loc1_ != null)
         {
            _loc2_ = _loc1_.findChildByName("slider_button") as IBitmapWrapperWindow;
            if(_loc2_ != null && var_634 != null)
            {
               _loc2_.bitmap = new BitmapData(var_634.width,var_634.height,true,16777215);
               _loc2_.bitmap.copyPixels(var_634,var_634.rect,new Point(0,0),null,null,true);
               _loc2_.procedure = buttonProcedure;
               var_1598 = _loc1_.width - _loc2_.width;
            }
         }
      }
      
      private function storeAssets(param1:IAssetLibrary) : void
      {
         var _loc2_:* = null;
         if(param1 == null)
         {
            return;
         }
         _loc2_ = BitmapDataAsset(param1.getAssetByName("memenu_settings_slider_base"));
         var_635 = BitmapData(_loc2_.content);
         _loc2_ = BitmapDataAsset(param1.getAssetByName("memenu_settings_slider_button"));
         var_634 = BitmapData(_loc2_.content);
      }
      
      public function set max(param1:Number) : void
      {
         var_1097 = param1;
         setValue(var_999.volume);
      }
      
      public function set min(param1:Number) : void
      {
         var_740 = param1;
         setValue(var_999.volume);
      }
      
      public function setValue(param1:Number) : void
      {
         if(_sliderContainer == null)
         {
            return;
         }
         var _loc2_:IWindow = _sliderContainer.findChildByName("slider_button");
         if(_loc2_ != null)
         {
            _loc2_.x = getSliderPosition(param1);
         }
      }
      
      private function buttonProcedure(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_501)
         {
            return;
         }
         var_999.saveVolume(getValue(param2.x),false);
      }
      
      private function getValue(param1:Number) : Number
      {
         return param1 / var_1598 * (var_1097 - var_740) + var_740;
      }
      
      public function dispose() : void
      {
         var_999 = null;
         _sliderContainer = null;
         var_635 = null;
         var_634 = null;
      }
   }
}
