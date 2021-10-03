package com.sulake.habbo.inventory.effects
{
   import com.sulake.habbo.inventory.common.IThumbListDrawableItem;
   import com.sulake.habbo.widget.memenu.IWidgetAvatarEffect;
   import flash.display.BitmapData;
   
   public class Effect implements IWidgetAvatarEffect, IThumbListDrawableItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_2065:Date;
      
      private var var_1342:Boolean = false;
      
      private var _type:int;
      
      private var include:BitmapData;
      
      private var var_284:Boolean = false;
      
      private var var_1320:int;
      
      private var var_638:int = 1;
      
      private var var_1102:int;
      
      public function Effect()
      {
         super();
      }
      
      public function get icon() : BitmapData
      {
         return include;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function setOneEffectExpired() : void
      {
         --var_638;
         if(var_638 < 0)
         {
            var_638 = 0;
         }
         var_1102 = var_1320;
         var_284 = false;
         var_1342 = false;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function set secondsLeft(param1:int) : void
      {
         var_1102 = param1;
      }
      
      public function get isActive() : Boolean
      {
         return var_284;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         include = param1;
      }
      
      public function get duration() : int
      {
         return var_1320;
      }
      
      public function get isInUse() : Boolean
      {
         return var_1342;
      }
      
      public function get effectsInInventory() : int
      {
         return var_638;
      }
      
      public function get iconImage() : BitmapData
      {
         return include;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function set isActive(param1:Boolean) : void
      {
         if(param1 && !var_284)
         {
            var_2065 = new Date();
         }
         var_284 = param1;
      }
      
      public function set effectsInInventory(param1:int) : void
      {
         var_638 = param1;
      }
      
      public function get secondsLeft() : int
      {
         var _loc1_:int = 0;
         if(var_284)
         {
            _loc1_ = var_1102 - (new Date().valueOf() - var_2065.valueOf()) / 1000;
            _loc1_ = Math.floor(_loc1_);
            if(_loc1_ < 0)
            {
               _loc1_ = 0;
            }
            return _loc1_;
         }
         return var_1102;
      }
      
      public function set isInUse(param1:Boolean) : void
      {
         var_1342 = param1;
      }
      
      public function set duration(param1:int) : void
      {
         var_1320 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
