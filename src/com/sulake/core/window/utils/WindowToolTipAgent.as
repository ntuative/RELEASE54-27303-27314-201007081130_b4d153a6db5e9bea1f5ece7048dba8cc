package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IInteractiveWindow;
   import com.sulake.core.window.components.IToolTipWindow;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowType;
   import flash.display.DisplayObject;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class WindowToolTipAgent extends WindowMouseOperator implements IWindowToolTipAgentService
   {
       
      
      protected var var_345:Timer;
      
      protected var var_1024:String;
      
      protected var var_1023:uint;
      
      protected var var_1201:Point;
      
      protected var var_263:IToolTipWindow;
      
      protected var var_1200:Point;
      
      public function WindowToolTipAgent(param1:DisplayObject)
      {
         var_1201 = new Point();
         var_1200 = new Point(20,20);
         var_1023 = 500;
         super(param1);
      }
      
      override public function end(param1:IWindow) : IWindow
      {
         if(var_345 != null)
         {
            var_345.stop();
            var_345.removeEventListener(TimerEvent.TIMER,showToolTip);
            var_345 = null;
         }
         hideToolTip();
         return super.end(param1);
      }
      
      override public function operate(param1:int, param2:int) : void
      {
         if(_window && true)
         {
            _mouse.x = param1;
            _mouse.y = param2;
            getMousePositionRelativeTo(_window,_mouse,var_1201);
            if(var_263 != null && true)
            {
               var_263.x = param1 + var_1200.x;
               var_263.y = param2 + var_1200.y;
            }
         }
      }
      
      protected function showToolTip(param1:TimerEvent) : void
      {
         var _loc2_:* = null;
         if(var_345 != null)
         {
            var_345.reset();
         }
         if(_window && true)
         {
            if(var_263 == null || false)
            {
               var_263 = _window.context.create("undefined::ToolTip",var_1024,WindowType.const_312,_window.style,0 | 0,null,null,null,0,null,null) as IToolTipWindow;
            }
            _loc2_ = new Point();
            _window.getGlobalPosition(_loc2_);
            var_263.x = _loc2_.x + var_1201.x + var_1200.x;
            var_263.y = _loc2_.y + var_1201.y + var_1200.y;
         }
      }
      
      override public function begin(param1:IWindow, param2:uint = 0) : IWindow
      {
         if(param1 && !param1.disposed)
         {
            if(param1 is IInteractiveWindow)
            {
               var_1024 = IInteractiveWindow(param1).toolTipCaption;
               var_1023 = IInteractiveWindow(param1).toolTipDelay;
            }
            else
            {
               var_1024 = param1.caption;
               var_1023 = 500;
            }
            _mouse.x = var_125.mouseX;
            _mouse.y = var_125.mouseY;
            getMousePositionRelativeTo(param1,_mouse,var_1201);
            if(var_1024 != null && var_1024 != "")
            {
               if(var_345 == null)
               {
                  var_345 = new Timer(var_1023,1);
                  var_345.addEventListener(TimerEvent.TIMER,showToolTip);
               }
               var_345.reset();
               var_345.start();
            }
         }
         return super.begin(param1,param2);
      }
      
      protected function hideToolTip() : void
      {
         if(var_263 != null && true)
         {
            var_263.destroy();
            var_263 = null;
         }
      }
   }
}
