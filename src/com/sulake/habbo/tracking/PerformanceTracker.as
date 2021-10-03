package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var var_1525:GarbageMonitor = null;
      
      private var var_1257:int = 0;
      
      private var var_1211:Boolean = false;
      
      private var var_1736:String = "";
      
      private var var_1524:String = "";
      
      private var var_357:Number = 0;
      
      private var var_1261:int = 10;
      
      private var var_2444:Array;
      
      private var var_700:int = 0;
      
      private var var_1259:int = 60;
      
      private var var_1048:int = 0;
      
      private var var_1049:int = 0;
      
      private var var_1738:String = "";
      
      private var var_1834:Number = 0;
      
      private var var_1258:int = 1000;
      
      private var var_1832:Boolean = true;
      
      private var var_1833:Number = 0.15;
      
      private var var_134:IHabboConfigurationManager = null;
      
      private var var_1740:String = "";
      
      private var var_1260:int = 0;
      
      private var _connection:IConnection = null;
      
      public function PerformanceTracker()
      {
         var_2444 = [];
         super();
         var_1524 = Capabilities.version;
         var_1736 = Capabilities.os;
         var_1211 = Capabilities.isDebugger;
         var_1740 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         var_1525 = new GarbageMonitor();
         updateGarbageMonitor();
         var_1257 = getTimer();
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = var_1525.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            var_1525.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function dispose() : void
      {
      }
      
      public function get averageUpdateInterval() : int
      {
         return var_357;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
      
      public function set reportInterval(param1:int) : void
      {
         var_1259 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
      
      public function get flashVersion() : String
      {
         return var_1524;
      }
      
      public function update(param1:uint) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc2_:Object = updateGarbageMonitor();
         if(_loc2_ != null)
         {
            ++var_1049;
            Logger.log("Garbage collection");
         }
         var _loc3_:Boolean = false;
         if(param1 > var_1258)
         {
            ++var_1048;
            _loc3_ = true;
         }
         else
         {
            ++var_700;
            if(var_700 <= 1)
            {
               var_357 = param1;
            }
            else
            {
               _loc4_ = Number(var_700);
               var_357 = var_357 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
            }
         }
         if(getTimer() - var_1257 > var_1259 * 1000 && var_1260 < var_1261)
         {
            Logger.log("*** Performance tracker: average frame rate " + 1000 / var_357);
            _loc5_ = true;
            if(var_1832 && var_1260 > 0)
            {
               _loc6_ = differenceInPercents(var_1834,var_357);
               if(_loc6_ < var_1833)
               {
                  _loc5_ = false;
               }
            }
            var_1257 = getTimer();
            if(_loc5_ || _loc3_)
            {
               var_1834 = var_357;
               if(sendReport())
               {
                  ++var_1260;
               }
            }
         }
      }
      
      public function set reportLimit(param1:int) : void
      {
         var_1261 = param1;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         var_1258 = param1;
      }
      
      private function sendReport() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(_connection != null)
         {
            _loc1_ = null;
            _loc2_ = getTimer() / 1000;
            _loc3_ = -1;
            _loc4_ = 0;
            _loc1_ = new PerformanceLogMessageComposer(_loc2_,var_1740,var_1524,var_1736,var_1738,var_1211,_loc4_,_loc3_,var_1049,var_357,var_1048);
            _connection.send(_loc1_);
            var_1049 = 0;
            var_357 = 0;
            var_700 = 0;
            var_1048 = 0;
            return true;
         }
         return false;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_134 = param1;
         var_1259 = int(var_134.getKey("performancetest.interval","60"));
         var_1258 = int(var_134.getKey("performancetest.slowupdatelimit","1000"));
         var_1261 = int(var_134.getKey("performancetest.reportlimit","10"));
         var_1833 = Number(var_134.getKey("performancetest.distribution.deviancelimit.percent","10"));
         var_1832 = Boolean(int(var_134.getKey("performancetest.distribution.enabled","1")));
      }
   }
}
