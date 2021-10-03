package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class InternalWindowServices implements IInternalWindowServices
   {
       
      
      private var var_125:DisplayObject;
      
      private var var_2492:uint;
      
      private var var_1009:IWindowToolTipAgentService;
      
      private var var_1007:IWindowMouseScalingService;
      
      private var var_235:IWindowContext;
      
      private var var_1008:IWindowFocusManagerService;
      
      private var var_1005:IWindowMouseListenerService;
      
      private var var_1006:IWindowMouseDraggingService;
      
      public function InternalWindowServices(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         var_2492 = 0;
         var_125 = param2;
         var_235 = param1;
         var_1006 = new WindowMouseDragger(param2);
         var_1007 = new WindowMouseScaler(param2);
         var_1005 = new WindowMouseListener(param2);
         var_1008 = new FocusManager(param2);
         var_1009 = new WindowToolTipAgent(param2);
      }
      
      public function getMouseScalingService() : IWindowMouseScalingService
      {
         return var_1007;
      }
      
      public function getFocusManagerService() : IWindowFocusManagerService
      {
         return var_1008;
      }
      
      public function getToolTipAgentService() : IWindowToolTipAgentService
      {
         return var_1009;
      }
      
      public function dispose() : void
      {
         if(var_1006 != null)
         {
            var_1006.dispose();
            var_1006 = null;
         }
         if(var_1007 != null)
         {
            var_1007.dispose();
            var_1007 = null;
         }
         if(var_1005 != null)
         {
            var_1005.dispose();
            var_1005 = null;
         }
         if(var_1008 != null)
         {
            var_1008.dispose();
            var_1008 = null;
         }
         if(var_1009 != null)
         {
            var_1009.dispose();
            var_1009 = null;
         }
         var_235 = null;
      }
      
      public function getMouseListenerService() : IWindowMouseListenerService
      {
         return var_1005;
      }
      
      public function getMouseDraggingService() : IWindowMouseDraggingService
      {
         return var_1006;
      }
   }
}
