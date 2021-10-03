package com.sulake.habbo.toolbar
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IRegionWindow;
   import com.sulake.core.window.enum.WindowType;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class ToolbarIcon
   {
       
      
      private var var_496:ToolbarIconGroup;
      
      private var var_1066:Boolean = false;
      
      private var var_1891:String;
      
      private var var_1010:Number;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var var_1067:String = "-1";
      
      private var _window:IBitmapWrapperWindow;
      
      private var var_38:String = "-1";
      
      private var var_104:IRegionWindow;
      
      private var _bitmapData:BitmapData;
      
      private var var_720:String;
      
      private var var_1890:int;
      
      private var var_719:Timer;
      
      private var var_1540:Array;
      
      private var var_1064:ToolbarIconBouncer;
      
      private var _windowManager:IHabboWindowManager;
      
      private var _events:IEventDispatcher;
      
      private var var_2457:Array;
      
      private var var_268:ToolbarBarMenuAnimator;
      
      private var var_417:ToolbarIconAnimator;
      
      private var var_615:Array;
      
      private var var_885:Array;
      
      private var var_884:String = "-1";
      
      private var var_2526:Boolean = true;
      
      private var var_1065:Array;
      
      private var var_1282:Timer;
      
      private var var_1892:int;
      
      private var var_91:Number = 0;
      
      private var _y:Number = 0;
      
      public function ToolbarIcon(param1:ToolbarIconGroup, param2:IHabboWindowManager, param3:IAssetLibrary, param4:String, param5:IEventDispatcher, param6:ToolbarBarMenuAnimator)
      {
         var_615 = new Array();
         var_885 = new Array();
         var_2457 = new Array();
         var_1064 = new ToolbarIconBouncer(0.8,1);
         super();
         var_496 = param1;
         _windowManager = param2;
         _assetLibrary = param3;
         var_720 = param4;
         _events = param5;
         var_268 = param6;
         var_1282 = new Timer(40,40);
         var_1282.addEventListener(TimerEvent.TIMER,updateBouncer);
         var_104 = param2.createWindow("TOOLBAR_ICON_" + param4 + "_REGION","",WindowType.const_412,HabboWindowStyle.const_36,HabboWindowParam.const_38,new Rectangle(0,0,1,1),onMouseEvent) as IRegionWindow;
         var_104.background = true;
         var_104.mouseTreshold = 0;
         var_104.visible = false;
         _window = IBitmapWrapperWindow(param2.createWindow("TOOLBAR_ICON_" + param4,"",HabboWindowType.BITMAP_WRAPPER,HabboWindowStyle.const_36,HabboWindowParam.const_36,new Rectangle(0,0,1,1),onMouseEvent,0));
         var_104.addChild(_window);
         _window.addEventListener(WindowEvent.const_43,onWindowResized);
      }
      
      private function getStateObject(param1:String) : StateItem
      {
         return var_1540[var_1065.indexOf(param1)];
      }
      
      public function get windowOffsetFromIcon() : Number
      {
         return var_1892;
      }
      
      public function get iconId() : String
      {
         return var_720;
      }
      
      private function onWindowResized(param1:WindowEvent) : void
      {
         updateRegion();
      }
      
      public function changePosition(param1:Number) : void
      {
         var_1010 = param1;
         updateRegion();
      }
      
      public function setIcon(param1:Boolean = true) : void
      {
         exists = param1;
         setAnimator();
      }
      
      public function set state(param1:String) : void
      {
         var_38 = param1;
         exists = true;
         setAnimator();
         setTooltip();
      }
      
      private function updateRegion() : void
      {
         if(var_104 == null || _window == null)
         {
            return;
         }
         var_104.width = _window.width;
         var_104.height = _window.height;
         var _loc1_:Boolean = false;
         if(_loc1_)
         {
            var_91 = (0 - 0) / 2;
            _y = var_1010 + (0 - 0) / 2;
         }
         else
         {
            var_91 = var_1010 + (0 - 0) / 2;
            _y = (0 - 0) / 2;
         }
         var_104.x = var_91;
         var_104.y = _y;
      }
      
      public function dispose() : void
      {
         if(_window != null)
         {
            _window.dispose();
            _window = null;
         }
         if(var_104 != null)
         {
            var_104.dispose();
            var_104 = null;
         }
         var_615 = null;
         var_885 = null;
         exists = false;
         _windowManager = null;
         _events = null;
         var_268 = null;
         var_417 = null;
         _bitmapData = null;
      }
      
      public function dockMenu(param1:String, param2:Array = null, param3:Boolean = false) : void
      {
         var _loc4_:* = null;
         if(var_615.indexOf(param1) < 0)
         {
            var_615.push(param1);
            _loc4_ = new MenuSettingsItem(param1,param2,param3);
            var_885.push(_loc4_);
         }
      }
      
      private function onMouseEvent(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc4_:* = null;
         if(!var_1066)
         {
            return;
         }
         var _loc3_:StateItem = getCurrentStateObject();
         switch(param1.type)
         {
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK:
               if(var_268)
               {
                  var_268.repositionWindow(var_720,true);
               }
               if(_events != null)
               {
                  _loc4_ = new HabboToolbarEvent(HabboToolbarEvent.const_58);
                  _loc4_.iconId = var_720;
                  _events.dispatchEvent(_loc4_);
               }
               break;
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER:
               if(false)
               {
                  if(_loc3_.hasStateOver)
                  {
                     state = _loc3_.stateOver;
                  }
                  else
                  {
                     state = var_1067;
                  }
               }
               break;
            case WindowMouseEvent.const_27:
               if(false)
               {
                  if(_loc3_.hasDefaultState)
                  {
                     state = _loc3_.defaultState;
                  }
                  else
                  {
                     state = var_884;
                  }
               }
         }
      }
      
      public function docksMenu(param1:String) : Boolean
      {
         return var_615.indexOf(param1) > -1;
      }
      
      public function menuLockedToIcon(param1:String) : Boolean
      {
         if(!docksMenu(param1))
         {
            return false;
         }
         var _loc2_:MenuSettingsItem = var_885[var_615.indexOf(param1)];
         return _loc2_.lockToIcon;
      }
      
      public function set exists(param1:Boolean) : void
      {
         var_1066 = param1;
         if(var_104 != null)
         {
            var_104.visible = var_1066;
         }
      }
      
      private function setTooltip() : void
      {
         if(var_104 == null)
         {
            return;
         }
         var _loc1_:StateItem = getCurrentStateObject();
         if(_loc1_ != null && _loc1_.tooltip != null)
         {
            var_104.toolTipCaption = "${toolbar.icon.tooltip." + _loc1_.tooltip + "}";
         }
         else
         {
            var_104.toolTipCaption = "${toolbar.icon.tooltip." + var_1891.toLowerCase() + "}";
         }
         var_104.toolTipDelay = 100;
      }
      
      public function animateWindowIn(param1:String, param2:IWindowContainer, param3:Number, param4:String, param5:Point) : void
      {
         if(var_268 != null)
         {
            var_268.animateWindowIn(this,param1,param2,var_720,param3,param4,getMenuYieldList(param1));
         }
      }
      
      private function updateAnimator(param1:Event) : void
      {
         if(var_417 != null && _window != null)
         {
            var_417.update(_window);
            if(var_417.hasNextState())
            {
               state = var_417.nextState;
            }
         }
      }
      
      public function defineFromXML(param1:XML) : void
      {
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var_1540 = new Array();
         var_1065 = new Array();
         var_1891 = param1.@id;
         var_1892 = int(param1.@window_offset_from_icon);
         var_1890 = int(param1.@window_margin);
         var _loc2_:XMLList = param1.elements("state");
         if(_loc2_.length() > 0)
         {
            if(param1.attribute("state_over").length() > 0)
            {
               var_1067 = param1.@state_over;
            }
            if(param1.attribute("state_default").length() > 0)
            {
               var_884 = param1.@state_default;
            }
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length())
            {
               _loc4_ = _loc2_[_loc3_];
               _loc5_ = new StateItem(_loc4_,param1.@id.toLowerCase());
               var_1065.push(_loc5_.id);
               var_1540.push(_loc5_);
               if(_loc3_ == 0)
               {
                  if(var_1067 == "-1")
                  {
                     var_1067 = _loc5_.id;
                  }
                  if(var_884 == "-1")
                  {
                     var_884 = _loc5_.id;
                  }
               }
               _loc3_++;
            }
         }
         var_38 = var_884;
      }
      
      public function setIconBitmapData(param1:BitmapData = null) : void
      {
         exists = true;
         _bitmapData = param1;
         setAnimator();
      }
      
      public function hideWindow(param1:String, param2:IWindowContainer, param3:Number, param4:String) : void
      {
         if(var_268 != null)
         {
            var_268.hideWindow(param1,param2,var_720,param3);
         }
      }
      
      public function positionWindow(param1:String, param2:IWindowContainer, param3:Number, param4:String) : void
      {
         if(var_268 != null)
         {
            var_268.positionWindow(this,param1,param2,var_720,param3,getMenuYieldList(param1));
         }
      }
      
      public function animateWindowOut(param1:String, param2:IWindowContainer, param3:String) : void
      {
         if(var_268 != null)
         {
            var_268.animateWindowOut(this,param1,param2,param3);
         }
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get exists() : Boolean
      {
         return var_1066;
      }
      
      private function updateBouncer(param1:Event) : void
      {
         if(var_1064 != null && _window != null)
         {
            var_1064.update();
            _window.y = var_1064.location;
         }
      }
      
      private function setAnimator() : void
      {
         if(var_719 != null)
         {
            var_719.stop();
            var_719 = null;
         }
         var _loc1_:StateItem = getCurrentStateObject();
         if(_loc1_ != null && var_1066)
         {
            if(_loc1_.frames == null)
            {
               return;
            }
            var_417 = new ToolbarIconAnimator(_loc1_,_assetLibrary,_window,var_91,_y,_bitmapData);
            if(false)
            {
               var_719 = new Timer(_loc1_.timer);
               var_719.addEventListener(TimerEvent.TIMER,updateAnimator);
               var_719.start();
            }
            if(_loc1_.bounce)
            {
               var_1064.reset(-7);
               var_1282.reset();
               var_1282.start();
            }
         }
         else
         {
            var_417 = null;
            _window.bitmap = null;
         }
      }
      
      public function get windowMargin() : Number
      {
         return var_1890 + var_496.windowMargin;
      }
      
      private function getCurrentStateObject() : StateItem
      {
         return getStateObject(var_38);
      }
      
      public function get window() : IWindow
      {
         return var_104;
      }
      
      public function get x() : Number
      {
         return var_91;
      }
      
      private function getMenuYieldList(param1:String) : Array
      {
         if(!docksMenu(param1))
         {
            return null;
         }
         var _loc2_:MenuSettingsItem = var_885[var_615.indexOf(param1)];
         return _loc2_.yieldList;
      }
      
      public function get group() : ToolbarIconGroup
      {
         return var_496;
      }
   }
}
