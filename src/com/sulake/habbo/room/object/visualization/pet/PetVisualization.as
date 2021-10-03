package com.sulake.habbo.room.object.visualization.pet
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.IPetImageListener;
   import com.sulake.habbo.avatar.animation.IAnimationLayerData;
   import com.sulake.habbo.avatar.animation.ISpriteDataContainer;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.room.object.IRoomObject;
   import com.sulake.room.object.IRoomObjectModel;
   import com.sulake.room.object.visualization.IRoomObjectSprite;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.RoomObjectSpriteVisualization;
   import com.sulake.room.utils.IRoomGeometry;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   
   public class PetVisualization extends RoomObjectSpriteVisualization implements IPetImageListener
   {
      
      private static const const_795:int = 2;
      
      private static const const_1135:Array = [0,0,0];
       
      
      private var var_402:String;
      
      private const const_1475:int = 1;
      
      private var var_437:String = "";
      
      private var var_748:int = 0;
      
      private var _isDisposed:Boolean = false;
      
      private var var_1774:int = 0;
      
      private var var_1349:String = "";
      
      private var var_2080:Boolean = false;
      
      private var var_416:Boolean;
      
      private const const_1136:int = 3;
      
      private var var_1609:String = "";
      
      private var var_67:IAvatarImage = null;
      
      private var var_747:int = 0;
      
      private const const_1748:int = 3;
      
      private var var_1341:int = -1;
      
      private var var_1347:Boolean = false;
      
      private var var_1626:int = -1;
      
      private var var_700:int = 0;
      
      private var var_2474:Array;
      
      private const const_1139:int = 0;
      
      private var var_1368:Boolean = false;
      
      private var var_1625:int = -1;
      
      private var var_373:ExperienceData;
      
      private var var_1608:Number = NaN;
      
      private var var_938:Boolean = false;
      
      private var var_1367:Boolean = false;
      
      private var var_322:BitmapDataAsset;
      
      private const const_1476:int = 2;
      
      private var var_1107:int = 0;
      
      private var _visualizationData:PetVisualizationData = null;
      
      private var var_524:Map;
      
      private var var_1348:Boolean = false;
      
      public function PetVisualization()
      {
         super();
         var_2474 = new Array();
         var_524 = new Map();
         var_416 = false;
      }
      
      public function imageReady() : void
      {
         var_1347 = true;
      }
      
      private function updateActions(param1:IAvatarImage) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.initActionAppends();
         param1.appendAction(AvatarAction.const_480,var_437,var_1609);
         if(var_1349 != null && var_1349 != "")
         {
            param1.appendAction(AvatarAction.const_281,var_1349);
         }
         if(var_2080 || var_1367)
         {
            param1.appendAction(AvatarAction.const_391);
         }
         param1.endActionAppends();
         var _loc2_:int = param1.getSprites().length + const_1136;
         if(_loc2_ != spriteCount)
         {
            createSprites(_loc2_);
         }
      }
      
      private function validateActions() : void
      {
         var _loc1_:int = 0;
         var_1348 = false;
         switch(var_437)
         {
            case AvatarAction.const_539:
            case AvatarAction.const_1018:
            case AvatarAction.const_983:
            case AvatarAction.const_890:
            case AvatarAction.const_911:
            case AvatarAction.const_897:
            case AvatarAction.const_638:
            case AvatarAction.const_280:
            case AvatarAction.const_271:
               var_1348 = true;
         }
         var_1368 = false;
         var_938 = false;
         if(var_437 == "lay")
         {
            var_938 = true;
            _loc1_ = int(var_1609);
            if(_loc1_ < 0)
            {
               var_1368 = true;
            }
         }
      }
      
      public function get disposed() : Boolean
      {
         return _isDisposed;
      }
      
      private function resetAvatarImages() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_524)
         {
            if(_loc1_)
            {
               _loc1_.dispose();
            }
         }
         var_524.reset();
         var_67 = null;
      }
      
      public function petImageReady(param1:String) : void
      {
         resetAvatarImages();
      }
      
      override public function initialize(param1:IRoomObjectVisualizationData) : Boolean
      {
         _visualizationData = param1 as PetVisualizationData;
         createSprites(const_1136);
         var_373 = new ExperienceData(_visualizationData);
         return true;
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc3_:* = null;
         super.dispose();
         if(var_524 != null)
         {
            _loc1_ = var_524.getKeys();
            for each(_loc2_ in _loc1_)
            {
               _loc3_ = var_524.getValue(_loc2_) as IAvatarImage;
               _loc3_.dispose();
            }
         }
         var_524.dispose();
         if(var_373)
         {
            var_373.dispose();
         }
         var_373 = null;
         _visualizationData = null;
         _isDisposed = true;
      }
      
      private function updateShadow(param1:Number) : void
      {
         var _loc2_:IRoomObjectSprite = getSprite(const_1475);
         var_322 = null;
         _loc2_ = getSprite(const_1475);
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(param1 < 48)
         {
            var_322 = var_67.getAsset("sh_std_sd_1_0_0");
            _loc3_ = -8;
            _loc4_ = -3;
         }
         else
         {
            var_322 = var_67.getAsset("h_std_sd_1_0_0");
            _loc3_ = -17;
            _loc4_ = -7;
         }
         if(var_322)
         {
            _loc2_.asset = var_322.content as BitmapData;
            _loc2_.offsetX = _loc3_;
            _loc2_.offsetY = _loc4_;
            _loc2_.alpha = 50;
            _loc2_.relativeDepth = 1;
         }
         else
         {
            _loc2_.asset = null;
         }
      }
      
      private function getAvatarImage(param1:Number) : IAvatarImage
      {
         var _loc2_:String = "avatarImage" + param1.toString();
         var _loc3_:IAvatarImage = var_524.getValue(_loc2_) as IAvatarImage;
         if(_loc3_ == null)
         {
            _loc3_ = _visualizationData.getAvatar(var_402,param1,this);
            if(_loc3_ != null)
            {
               var_524.add(_loc2_,_loc3_);
            }
         }
         return _loc3_;
      }
      
      private function updateModel(param1:IRoomObjectModel, param2:Number) : Boolean
      {
         var _loc3_:* = null;
         if(param1.getUpdateID() != var_171)
         {
            var_2080 = param1.getNumber(RoomObjectVariableEnum.const_389) > 0;
            var_1349 = param1.getString(RoomObjectVariableEnum.const_256);
            var_437 = param1.getString(RoomObjectVariableEnum.const_467);
            var_1609 = param1.getString(RoomObjectVariableEnum.const_640);
            var_1608 = param1.getNumber(RoomObjectVariableEnum.const_352);
            var_1107 = param1.getNumber(RoomObjectVariableEnum.const_1012);
            var_1774 = param1.getNumber(RoomObjectVariableEnum.const_895);
            validateActions();
            _loc3_ = param1.getString(RoomObjectVariableEnum.const_173);
            if(var_402 != _loc3_)
            {
               var_402 = _loc3_;
               resetAvatarImages();
            }
            var_171 = param1.getUpdateID();
            return true;
         }
         return false;
      }
      
      override public function update(param1:IRoomGeometry = null, param2:int = 0) : void
      {
         var _loc11_:int = 0;
         var _loc12_:* = null;
         var _loc13_:* = null;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:* = null;
         var _loc17_:* = null;
         var _loc18_:* = null;
         var _loc19_:int = 0;
         var _loc20_:int = 0;
         var _loc21_:int = 0;
         var _loc22_:int = 0;
         var _loc23_:int = 0;
         var _loc24_:* = null;
         var _loc25_:* = null;
         var _loc3_:IRoomObject = object;
         if(_loc3_ == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(_visualizationData == null)
         {
            return;
         }
         var _loc4_:IRoomObjectModel = _loc3_.getModel();
         if(var_1347)
         {
            var_1347 = false;
            var_748 = 0;
            var_747 = 1;
            resetAvatarImages();
         }
         var _loc5_:Number = param1.scale;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = updateModel(_loc4_,_loc5_);
         if(_loc8_ || _loc5_ != var_153 || var_67 == null)
         {
            if(_loc5_ != var_153)
            {
               var_153 = _loc5_;
               _loc6_ = true;
            }
            if(_loc6_ || var_67 == null)
            {
               var_67 = getAvatarImage(_loc5_);
            }
            if(var_67 == null)
            {
               return;
            }
            if(_loc6_)
            {
               updateShadow(_loc5_);
            }
            _loc7_ = updateObject(_loc3_,param1,true);
            updateActions(var_67);
         }
         else
         {
            _loc7_ = updateObject(_loc3_,param1);
         }
         var _loc9_:Boolean = _loc7_ || _loc8_ || _loc6_;
         var _loc10_:Boolean = var_416 || var_747 > 0 || var_1348;
         var_373.alpha = 0;
         if(var_1107 > 0)
         {
            _loc11_ = param2 - var_1107;
            if(_loc11_ < AvatarAction.const_859)
            {
               var_373.alpha = int(Math.sin(_loc11_ / 0 * 0) * 255);
               var_373.setExperience(var_1774);
               var_747 = const_1748;
            }
            else
            {
               var_1107 = 0;
            }
            _loc12_ = getSprite(const_1476);
            if(_loc12_ != null)
            {
               if(false)
               {
                  _loc12_.asset = var_373.image;
                  _loc12_.offsetX = -20;
                  _loc12_.offsetY = -80;
                  _loc12_.alpha = var_373.alpha;
                  _loc12_.visible = true;
               }
               else
               {
                  _loc12_.asset = null;
                  _loc12_.visible = false;
               }
            }
         }
         if(_loc9_ || _loc10_)
         {
            increaseUpdateId();
            --var_747;
            ++var_700;
            --var_748;
            if(!(var_748 <= 0 || _loc6_))
            {
               return;
            }
            var_67.updateAnimationByFrames(1);
            var_748 = const_795;
            var_416 = var_67.isAnimating();
            _loc13_ = var_67.getCanvasOffsets();
            if(_loc13_ == null || _loc13_.length < 3)
            {
               _loc13_ = const_1135;
            }
            _loc14_ = 0;
            if(object.getLocation().z > 0)
            {
               _loc14_ = Math.min(_loc5_ / 2.75,0);
            }
            _loc12_ = getSprite(const_1139);
            if(_loc12_)
            {
               _loc17_ = var_67.getImage(AvatarSetType.const_31,false);
               if(_loc17_ != null)
               {
                  _loc12_.asset = _loc17_;
               }
               if(_loc5_ < 48)
               {
                  _loc12_.offsetX = -16 + _loc13_[0];
                  _loc12_.offsetY = -_loc12_.asset.height + 8 + _loc13_[1] + _loc14_;
               }
               else
               {
                  _loc12_.offsetX = -32 + _loc13_[0];
                  _loc12_.offsetY = -_loc12_.asset.height + 16 + _loc13_[1] + _loc14_;
               }
            }
            _loc15_ = const_1136;
            for each(_loc16_ in var_67.getSprites())
            {
               _loc12_ = getSprite(_loc15_);
               if(_loc12_ != null)
               {
                  _loc18_ = var_67.getLayerData(_loc16_);
                  _loc19_ = 0;
                  _loc20_ = _loc16_.getDirectionOffsetX(var_67.getDirection());
                  _loc21_ = _loc16_.getDirectionOffsetY(var_67.getDirection());
                  _loc22_ = _loc16_.getDirectionOffsetZ(var_67.getDirection());
                  _loc23_ = 0;
                  if(_loc16_.hasDirections)
                  {
                     _loc23_ = var_67.getDirection();
                  }
                  if(_loc18_ != null)
                  {
                     _loc19_ = _loc18_.animationFrame;
                     _loc20_ += _loc18_.dx;
                     _loc21_ += _loc18_.dy;
                     _loc23_ += _loc18_.directionOffset;
                  }
                  if(_loc5_ < 48)
                  {
                     _loc20_ /= 2;
                     _loc21_ /= 2;
                  }
                  if(_loc23_ < 0)
                  {
                     _loc23_ += 8;
                  }
                  if(_loc23_ > 7)
                  {
                     _loc23_ -= 8;
                  }
                  _loc24_ = var_67.getScale() + "_" + _loc16_.member + "_" + _loc23_ + "_" + _loc19_;
                  _loc25_ = var_67.getAsset(_loc24_);
                  if(_loc25_ != null)
                  {
                     _loc12_.asset = _loc25_.content as BitmapData;
                     _loc12_.offsetX = -1 * _loc25_.offset.x - _loc5_ / 2 + _loc20_;
                     _loc12_.offsetY = -1 * _loc25_.offset.y + _loc21_;
                     _loc12_.relativeDepth = -0.01 - 0.1 * _loc15_ * _loc22_;
                     if(_loc16_.ink == 33)
                     {
                        _loc12_.blendMode = BlendMode.ADD;
                     }
                     else
                     {
                        _loc12_.blendMode = BlendMode.NORMAL;
                     }
                     _loc15_++;
                  }
               }
            }
         }
      }
      
      private function updateObject(param1:IRoomObject, param2:IRoomGeometry, param3:Boolean = false) : Boolean
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(param3 || var_305 != param1.getUpdateID() || var_1341 != param2.updateId)
         {
            _loc4_ = param1.getDirection().x - param2.direction.x;
            _loc4_ = (_loc4_ % 360 + 360) % 360;
            _loc5_ = var_1608;
            if(isNaN(var_1608))
            {
               _loc5_ = _loc4_;
            }
            else
            {
               _loc5_ -= param2.direction.x;
               _loc5_ = (_loc5_ % 360 + 360) % 360;
            }
            if(_loc4_ != var_1626 || param3)
            {
               var_1626 = _loc4_;
               _loc4_ -= 112.5;
               _loc4_ = (_loc4_ + 360) % 360;
               var_67.setDirectionAngle(AvatarSetType.const_31,_loc4_);
            }
            if(_loc5_ != var_1625 || param3)
            {
               var_1625 = _loc5_;
               _loc5_ -= 112.5;
               _loc5_ = (_loc5_ + 360) % 360;
               var_67.setDirectionAngle(AvatarSetType.const_41,_loc5_);
            }
            var_305 = param1.getUpdateID();
            var_1341 = param2.updateId;
            return true;
         }
         return false;
      }
   }
}
