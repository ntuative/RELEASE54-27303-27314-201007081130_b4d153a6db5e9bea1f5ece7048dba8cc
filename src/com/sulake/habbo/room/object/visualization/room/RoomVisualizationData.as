package com.sulake.habbo.room.object.visualization.room
{
   import com.sulake.habbo.room.object.visualization.room.mask.PlaneMaskManager;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.IPlaneRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.animated.LandscapeRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.FloorRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallAdRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallRasterizer;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.utils.IGraphicAssetCollection;
   
   public class RoomVisualizationData implements IRoomObjectVisualizationData
   {
       
      
      private var var_441:FloorRasterizer;
      
      private var var_879:Boolean = false;
      
      private var var_649:PlaneMaskManager;
      
      private var var_440:WallRasterizer;
      
      private var var_650:WallAdRasterizer;
      
      private var var_442:LandscapeRasterizer;
      
      public function RoomVisualizationData()
      {
         super();
         var_440 = new WallRasterizer();
         var_441 = new FloorRasterizer();
         var_650 = new WallAdRasterizer();
         var_442 = new LandscapeRasterizer();
         var_649 = new PlaneMaskManager();
      }
      
      public function get wallRasterizer() : IPlaneRasterizer
      {
         return var_440;
      }
      
      public function get method_15() : WallAdRasterizer
      {
         return var_650;
      }
      
      public function get floorRasterizer() : IPlaneRasterizer
      {
         return var_441;
      }
      
      public function get initialized() : Boolean
      {
         return var_879;
      }
      
      protected function reset() : void
      {
      }
      
      public function get maskManager() : PlaneMaskManager
      {
         return var_649;
      }
      
      public function dispose() : void
      {
         if(var_440 != null)
         {
            var_440.dispose();
            var_440 = null;
         }
         if(var_441 != null)
         {
            var_441.dispose();
            var_441 = null;
         }
         if(var_650 != null)
         {
            var_650.dispose();
            var_650 = null;
         }
         if(var_442 != null)
         {
            var_442.dispose();
            var_442 = null;
         }
         if(var_649 != null)
         {
            var_649.dispose();
            var_649 = null;
         }
      }
      
      public function initialize(param1:XML) : Boolean
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         reset();
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:XMLList = param1.wallData;
         if(_loc2_.length() > 0)
         {
            _loc7_ = _loc2_[0];
            var_440.initialize(_loc7_);
         }
         var _loc3_:XMLList = param1.floorData;
         if(_loc3_.length() > 0)
         {
            _loc8_ = _loc3_[0];
            var_441.initialize(_loc8_);
         }
         var _loc4_:XMLList = param1.wallAdData;
         if(_loc4_.length() > 0)
         {
            _loc9_ = _loc4_[0];
            var_650.initialize(_loc9_);
         }
         var _loc5_:XMLList = param1.landscapeData;
         if(_loc5_.length() > 0)
         {
            _loc10_ = _loc5_[0];
            var_442.initialize(_loc10_);
         }
         var _loc6_:XMLList = param1.maskData;
         if(_loc6_.length() > 0)
         {
            _loc11_ = _loc6_[0];
            var_649.initialize(_loc11_);
         }
         return true;
      }
      
      public function clearCache() : void
      {
         if(var_440 != null)
         {
            var_440.clearCache();
         }
         if(var_441 != null)
         {
            var_441.clearCache();
         }
         if(var_442 != null)
         {
            var_442.clearCache();
         }
      }
      
      public function get landscapeRasterizer() : IPlaneRasterizer
      {
         return var_442;
      }
      
      public function initializeAssetCollection(param1:IGraphicAssetCollection) : void
      {
         if(var_879)
         {
            return;
         }
         var_440.initializeAssetCollection(param1);
         var_441.initializeAssetCollection(param1);
         var_650.initializeAssetCollection(param1);
         var_442.initializeAssetCollection(param1);
         var_649.initializeAssetCollection(param1);
         var_879 = true;
      }
   }
}
