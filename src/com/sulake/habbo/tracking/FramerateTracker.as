package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.utils.getTimer;
   
   public class FramerateTracker
   {
       
      
      private var var_1257:int;
      
      private var var_357:Number;
      
      private var var_1679:int;
      
      private var var_985:int;
      
      private var var_2271:int;
      
      private var var_2270:Boolean;
      
      private var _reportIntervalMillis:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         ++var_985;
         var _loc3_:int = getTimer();
         if(var_985 == 1)
         {
            var_357 = param1;
            var_1257 = _loc3_;
         }
         else
         {
            _loc4_ = Number(var_985);
            var_357 = var_357 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(var_2270 && _loc3_ - var_1257 >= _reportIntervalMillis && var_1679 < var_2271)
         {
            _loc5_ = 1000 / var_357;
            param2.track("performance","averageFramerate",Math.round(_loc5_));
            ++var_1679;
            var_1257 = _loc3_;
            var_985 = 0;
         }
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         _reportIntervalMillis = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         var_2271 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         var_2270 = true;
      }
      
      public function dispose() : void
      {
      }
   }
}
