package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_264:String = "WE_CHILD_RESIZED";
      
      public static const const_1294:String = "WE_CLOSE";
      
      public static const const_1400:String = "WE_DESTROY";
      
      public static const const_117:String = "WE_CHANGE";
      
      public static const const_1224:String = "WE_RESIZE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_1517:String = "WE_PARENT_RESIZE";
      
      public static const const_99:String = "WE_UPDATE";
      
      public static const const_1270:String = "WE_MAXIMIZE";
      
      public static const const_462:String = "WE_DESTROYED";
      
      public static const const_1032:String = "WE_UNSELECT";
      
      public static const const_1362:String = "WE_MAXIMIZED";
      
      public static const const_1576:String = "WE_UNLOCKED";
      
      public static const const_424:String = "WE_CHILD_REMOVED";
      
      public static const const_159:String = "WE_OK";
      
      public static const const_43:String = "WE_RESIZED";
      
      public static const const_1246:String = "WE_ACTIVATE";
      
      public static const const_293:String = "WE_ENABLED";
      
      public static const const_386:String = "WE_CHILD_RELOCATED";
      
      public static const const_1320:String = "WE_CREATE";
      
      public static const const_763:String = "WE_SELECT";
      
      public static const const_177:String = "";
      
      public static const const_1512:String = "WE_LOCKED";
      
      public static const const_1514:String = "WE_PARENT_RELOCATE";
      
      public static const const_1578:String = "WE_CHILD_REMOVE";
      
      public static const const_1543:String = "WE_CHILD_RELOCATE";
      
      public static const const_1662:String = "WE_LOCK";
      
      public static const const_212:String = "WE_FOCUSED";
      
      public static const const_688:String = "WE_UNSELECTED";
      
      public static const const_1007:String = "WE_DEACTIVATED";
      
      public static const const_1446:String = "WE_MINIMIZED";
      
      public static const const_1675:String = "WE_ARRANGED";
      
      public static const const_1659:String = "WE_UNLOCK";
      
      public static const const_1587:String = "WE_ATTACH";
      
      public static const const_1260:String = "WE_OPEN";
      
      public static const const_1241:String = "WE_RESTORE";
      
      public static const const_1535:String = "WE_PARENT_RELOCATED";
      
      public static const const_1431:String = "WE_RELOCATE";
      
      public static const const_1566:String = "WE_CHILD_RESIZE";
      
      public static const const_1650:String = "WE_ARRANGE";
      
      public static const const_1243:String = "WE_OPENED";
      
      public static const const_1210:String = "WE_CLOSED";
      
      public static const const_1663:String = "WE_DETACHED";
      
      public static const const_1653:String = "WE_UPDATED";
      
      public static const const_1365:String = "WE_UNFOCUSED";
      
      public static const const_501:String = "WE_RELOCATED";
      
      public static const const_1196:String = "WE_DEACTIVATE";
      
      public static const const_192:String = "WE_DISABLED";
      
      public static const const_609:String = "WE_CANCEL";
      
      public static const const_755:String = "WE_ENABLE";
      
      public static const const_1190:String = "WE_ACTIVATED";
      
      public static const const_1338:String = "WE_FOCUS";
      
      public static const const_1597:String = "WE_DETACH";
      
      public static const const_1376:String = "WE_RESTORED";
      
      public static const const_1390:String = "WE_UNFOCUS";
      
      public static const const_54:String = "WE_SELECTED";
      
      public static const const_1193:String = "WE_PARENT_RESIZED";
      
      public static const const_1308:String = "WE_CREATED";
      
      public static const const_1694:String = "WE_ATTACHED";
      
      public static const const_1229:String = "WE_MINIMIZE";
      
      public static const WINDOW_EVENT_DISABLE:String = "WE_DISABLE";
       
      
      protected var _type:String = "";
      
      protected var var_1725:IWindow;
      
      protected var _window:IWindow;
      
      protected var var_1490:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         _type = param1;
         _window = param2;
         var_1725 = param3;
         var_1490 = false;
         super(param1,param4,param5);
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return var_1490;
      }
      
      public function get related() : IWindow
      {
         return var_1725;
      }
      
      public function get window() : IWindow
      {
         return _window;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      override public function get type() : String
      {
         return _type;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(_type,window,related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            var_1490 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
   }
}
