package com.sulake.habbo.avatar.animation
{
   import com.sulake.core.utils.Map;
   import flash.geom.ColorTransform;
   
   public class AvatarDataContainer implements IAvatarDataContainer
   {
       
      
      private var _alphaMultiplier:Number = 1.0;
      
      private var var_2323:uint;
      
      private var _rgb:uint;
      
      private var var_1176:Map;
      
      private var var_1563:Number = 1.0;
      
      private var _b:uint;
      
      private var var_1561:Number = 1.0;
      
      private var var_1698:int;
      
      private var _colorTransform:ColorTransform;
      
      private var var_2324:uint;
      
      private var var_1562:uint;
      
      private var var_1565:Number = 1.0;
      
      private var var_2325:Boolean = true;
      
      private var var_1564:uint;
      
      public function AvatarDataContainer(param1:XML)
      {
         super();
         var_1698 = parseInt(param1.@ink);
         var _loc2_:String = String(param1.@foreground);
         _loc2_ = _loc2_.replace("#","");
         var _loc3_:String = String(param1.@background);
         _loc3_ = _loc3_.replace("#","");
         var_2323 = parseInt(_loc2_,16);
         var_2324 = parseInt(_loc3_,16);
         _rgb = parseInt(_loc2_,16);
         var_1564 = _rgb >> 16 & 255;
         var_1562 = _rgb >> 8 & 255;
         _b = _rgb >> 0 & 255;
         var_1565 = var_1564 / 255 * 1;
         var_1561 = var_1562 / 255 * 1;
         var_1563 = _b / 255 * 1;
         if(var_1698 == 37)
         {
            _alphaMultiplier = 0.5;
            var_2325 = false;
         }
         _colorTransform = new ColorTransform(var_1565,var_1561,var_1563,_alphaMultiplier);
         var_1176 = generatePaletteMapForGrayscale(var_2324,var_2323);
      }
      
      public function get reds() : Array
      {
         return var_1176.getValue("reds") as Array;
      }
      
      private function generatePaletteMapForGrayscale(param1:uint, param2:uint) : Map
      {
         var _loc3_:* = param1 >> 24 & 255;
         var _loc4_:* = param1 >> 16 & 255;
         var _loc5_:* = param1 >> 8 & 255;
         var _loc6_:* = param1 >> 0 & 255;
         var _loc7_:* = param2 >> 24 & 255;
         var _loc8_:* = param2 >> 16 & 255;
         var _loc9_:* = param2 >> 8 & 255;
         var _loc10_:* = param2 >> 0 & 255;
         var _loc11_:Number = (_loc7_ - _loc3_) / 255;
         var _loc12_:Number = (_loc8_ - _loc4_) / 255;
         var _loc13_:Number = (_loc9_ - _loc5_) / 255;
         var _loc14_:Number = (_loc10_ - _loc6_) / 255;
         var _loc15_:Map = new Map();
         var _loc16_:* = [];
         var _loc17_:* = [];
         var _loc18_:* = [];
         var _loc19_:* = [];
         var _loc20_:* = Number(_loc3_);
         var _loc21_:Number = _loc4_;
         var _loc22_:Number = _loc5_;
         var _loc23_:Number = _loc6_;
         var _loc24_:int = 0;
         while(_loc24_ < 256)
         {
            if(_loc21_ == _loc4_ && _loc22_ == _loc5_ && _loc23_ == _loc6_)
            {
               _loc20_ = 0;
            }
            _loc20_ += _loc11_;
            _loc21_ += _loc12_;
            _loc22_ += _loc13_;
            _loc23_ += _loc14_;
            _loc19_.push(_loc20_ << 24);
            _loc16_.push(_loc20_ << 24 | _loc21_ << 16 | _loc22_ << 8 | _loc23_);
            _loc17_.push(_loc20_ << 24 | _loc21_ << 16 | _loc22_ << 8 | _loc23_);
            _loc18_.push(_loc20_ << 24 | _loc21_ << 16 | _loc22_ << 8 | _loc23_);
            _loc24_++;
         }
         _loc15_.add("alphas",_loc16_);
         _loc15_.add("reds",_loc16_);
         _loc15_.add("greens",_loc17_);
         _loc15_.add("blues",_loc18_);
         return _loc15_;
      }
      
      public function get blues() : Array
      {
         return var_1176.getValue("blues") as Array;
      }
      
      public function get greens() : Array
      {
         return var_1176.getValue("greens") as Array;
      }
      
      public function get colorTransform() : ColorTransform
      {
         return _colorTransform;
      }
      
      public function get alphas() : Array
      {
         return var_1176.getValue("alphas") as Array;
      }
      
      public function get paletteIsGrayscale() : Boolean
      {
         return var_2325;
      }
      
      public function get ink() : int
      {
         return var_1698;
      }
   }
}
