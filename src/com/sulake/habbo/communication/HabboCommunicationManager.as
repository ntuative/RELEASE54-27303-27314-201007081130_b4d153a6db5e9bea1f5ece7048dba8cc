package com.sulake.habbo.communication
{
   import com.sulake.core.Core;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.ICoreCommunicationManager;
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.communication.connection.IConnectionStateListener;
   import com.sulake.core.communication.enum.ConnectionType;
   import com.sulake.core.communication.messages.IMessageConfiguration;
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.protocol.IProtocol;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.core.utils.ErrorReportStorage;
   import com.sulake.habbo.communication.enum.HabboConnectionType;
   import com.sulake.habbo.communication.enum.HabboProtocolType;
   import com.sulake.habbo.communication.messages.outgoing.handshake.DisconnectMessageComposer;
   import com.sulake.habbo.communication.protocol.WedgieProtocol;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.configuration.enum.HabboConfigurationEvent;
   import com.sulake.habbo.tracking.HabboErrorVariableEnum;
   import com.sulake.iid.IIDCoreCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class HabboCommunicationManager extends Component implements IHabboCommunicationManager, IConnectionStateListener
   {
       
      
      private var var_88:int = 0;
      
      private var var_37:String = "";
      
      private var var_1340:Timer;
      
      private var var_277:Array;
      
      private var var_2046:Boolean = false;
      
      private var var_86:String = "";
      
      private var _habboConfiguration:IHabboConfigurationManager;
      
      private var var_1185:IMessageConfiguration;
      
      private const const_1746:int = 2;
      
      private var var_370:int = -1;
      
      private var var_319:ICoreCommunicationManager;
      
      private var var_920:int = 1;
      
      private var var_2048:Boolean = false;
      
      private var var_2047:Boolean = false;
      
      private var _connection:IConnection;
      
      public function HabboCommunicationManager(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         var_1185 = new HabboMessages();
         var_277 = [];
         var_1340 = new Timer(100,1);
         super(param1,param2,param3);
         this.queueInterface(new IIDCoreCommunicationManager(),onCoreCommunicationManagerInit);
         this.queueInterface(new IIDHabboConfigurationManager(),onHabboConfigurationInit);
         param1.events.addEventListener(Event.UNLOAD,unloading);
      }
      
      public function get port() : int
      {
         if(var_370 < 0 || var_370 >= var_277.length)
         {
            return 0;
         }
         return var_277[var_370];
      }
      
      private function unloading(param1:Event) : void
      {
         if(_connection)
         {
            _connection.send(new DisconnectMessageComposer());
            _connection.dispose();
            _connection = null;
         }
      }
      
      private function onSecurityError(param1:SecurityErrorEvent) : void
      {
         Logger.log("[HabboCommunicationManager] Security Error: " + param1.text);
         ErrorReportStorage.addDebugData("Communication Security Error","SecurityError on connect: " + param1.text + ". Port was " + var_277[var_370]);
         tryNextPort();
      }
      
      private function onConnect(param1:Event) : void
      {
         ErrorReportStorage.addDebugData("Connection","Connected with " + var_920 + " attempts");
      }
      
      private function onConfigurationReady(param1:Event = null) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         Logger.log("Habbo Communication Manager: init based on configuration: " + _habboConfiguration);
         if(_habboConfiguration == null)
         {
            Core.crash("Received configuration ready event but configuration was null",Core.const_172);
         }
         else
         {
            ErrorReportStorage.addDebugData("CommunicationConfigInit","Config Ready");
            var_277 = [];
            var_37 = _habboConfiguration.getKey("connection.info.host",null);
            if(var_37 == null)
            {
               Core.crash("connection.info.host was not defined",Core.const_325);
               return;
            }
            _loc2_ = _habboConfiguration.getKey("connection.info.port",null);
            if(_loc2_ == null)
            {
               Core.crash("connection.info.port was not defined",Core.const_325);
               return;
            }
            if(_habboConfiguration.keyExists("local.environment"))
            {
               var_37 = _habboConfiguration.getKey("connection.info.host.local");
               _loc2_ = _habboConfiguration.getKey("connection.info.port.local");
            }
            _loc3_ = _loc2_.split(",");
            for each(_loc4_ in _loc3_)
            {
               var_277.push(parseInt(_loc4_.replace(" ","")));
            }
            ErrorReportStorage.addDebugData("CommunicationConfigInit","Config Host: " + var_37);
            Logger.log("Connection Host: " + var_37);
            Logger.log("Connection Ports: " + var_277);
            Logger.log("Habbo Connection Info:" + _connection);
            var_2048 = true;
            if(var_2047)
            {
               nextPort();
            }
         }
      }
      
      public function messageReceived(param1:String, param2:String) : void
      {
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1385,String(new Date().getTime()));
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1335,param1 + " " + param2);
         if(false)
         {
            var_86 += ",R:" + param1;
         }
         else
         {
            var_86 = "R:" + param1;
         }
         if(false)
         {
            var_86 = var_86.substring(-150);
         }
         ErrorReportStorage.addDebugData("MESSAGE_QUEUE",var_86);
      }
      
      private function nextPort() : void
      {
         if(false)
         {
            Logger.log("Warning: Already connected so will not try to connect again!");
            return;
         }
         ++var_370;
         if(var_370 >= var_277.length)
         {
            ++var_920;
            ErrorReportStorage.addDebugData("ConnectionRetry","Connection attempt " + var_920);
            if(var_920 > const_1746)
            {
               if(var_2046)
               {
                  return;
               }
               var_2046 = true;
               Core.error("Connection failed to host " + var_37 + " ports " + var_277,true,Core.const_325);
               return;
            }
            var_370 = 0;
         }
         _connection.timeout = var_920 * 10000;
         _connection.init(var_37,var_277[var_370]);
      }
      
      private function onTryNextPort(param1:TimerEvent) : void
      {
         var_1340.stop();
         nextPort();
      }
      
      public function get mode() : int
      {
         return var_88;
      }
      
      override public function dispose() : void
      {
         if(_connection)
         {
            _connection.dispose();
            _connection = null;
         }
         if(var_319)
         {
            var_319.release(new IIDCoreCommunicationManager());
            var_319 = null;
         }
         if(_habboConfiguration)
         {
            _habboConfiguration.release(new IIDHabboConfigurationManager());
            _habboConfiguration = null;
         }
         super.dispose();
      }
      
      public function initConnection(param1:String) : void
      {
         switch(param1)
         {
            case HabboConnectionType.const_265:
               if(_habboConfiguration == null)
               {
                  Core.crash("Tried to connect to proxy but configuration was null",Core.const_325);
                  return;
               }
               if(_connection == null)
               {
                  Core.crash("Tried to connect to proxy but connection was null",Core.const_325);
                  return;
               }
               var_2047 = true;
               if(var_2048)
               {
                  nextPort();
               }
               break;
            default:
               Logger.log("Unknown Habbo Connection Type: " + param1);
         }
      }
      
      public function habboWebLogin(param1:String, param2:String) : IHabboWebLogin
      {
         var _loc3_:String = "";
         _loc3_ = _habboConfiguration.getKey("url.prefix",_loc3_);
         _loc3_ = _loc3_.replace("http://","");
         _loc3_ = _loc3_.replace("https://","");
         return new HabboWebLogin(param1,param2,_loc3_);
      }
      
      public function addHabboConnectionMessageEvent(param1:IMessageEvent) : void
      {
         var_319.addConnectionMessageEvent(HabboConnectionType.const_265,param1);
      }
      
      public function connectionInit(param1:String, param2:int) : void
      {
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1395,param1);
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1420,String(param2));
      }
      
      public function messageSent(param1:String, param2:String) : void
      {
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1299,String(new Date().getTime()));
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1238,param1 + " " + param2);
         if(false)
         {
            var_86 += ",S:" + param1;
         }
         else
         {
            var_86 = "S:" + param1;
         }
         if(false)
         {
            var_86 = var_86.substring(-150);
         }
         ErrorReportStorage.addDebugData("MESSAGE_QUEUE",var_86);
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         Logger.log("[HabboCommunicationManager] IO Error: " + param1.text);
         switch(param1.type)
         {
            case IOErrorEvent.IO_ERROR:
               break;
            case IOErrorEvent.DISK_ERROR:
               break;
            case IOErrorEvent.NETWORK_ERROR:
               break;
            case IOErrorEvent.VERIFY_ERROR:
         }
         ErrorReportStorage.addDebugData("Communication IO Error","IOError " + param1.type + " on connect: " + param1.text + ". Port was " + var_277[var_370]);
         tryNextPort();
      }
      
      public function set mode(param1:int) : void
      {
         var_88 = param1;
      }
      
      private function onCoreCommunicationManagerInit(param1:IID = null, param2:IUnknown = null) : void
      {
         var _loc3_:* = null;
         Logger.log("Habbo Communication Manager: Core Communication Manager found:: " + [param1,param2]);
         if(param2 != null)
         {
            var_319 = param2 as ICoreCommunicationManager;
            var_319.connectionStateListener = this;
            var_319.registerProtocolType(HabboProtocolType.const_926,WedgieProtocol);
            _connection = var_319.createConnection(HabboConnectionType.const_265,ConnectionType.const_922);
            _loc3_ = var_319.getProtocolInstanceOfType(HabboProtocolType.const_926);
            _connection.registerMessageClasses(var_1185);
            _connection.protocol = _loc3_;
            _connection.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
            _connection.addEventListener(SecurityErrorEvent.SECURITY_ERROR,onSecurityError);
            _connection.addEventListener(Event.CONNECT,onConnect);
         }
      }
      
      private function tryNextPort() : void
      {
         var_1340.addEventListener(TimerEvent.TIMER,onTryNextPort);
         var_1340.start();
      }
      
      private function onHabboConfigurationInit(param1:IID = null, param2:IUnknown = null) : void
      {
         if(param2 != null)
         {
            ErrorReportStorage.addDebugData("CommunicationConfigInit","Config Received");
            _habboConfiguration = param2 as IHabboConfigurationManager;
            (_habboConfiguration as Component).events.addEventListener(HabboConfigurationEvent.INIT,onConfigurationReady);
         }
         else
         {
            ErrorReportStorage.addDebugData("CommunicationConfigInit","Config NOT received");
         }
      }
      
      public function getHabboMainConnection(param1:Function) : IConnection
      {
         return !!var_319 ? var_319.queueConnection(HabboConnectionType.const_265,param1) : null;
      }
   }
}
