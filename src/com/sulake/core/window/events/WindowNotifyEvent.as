package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1327:String = "WN_CREATED";
      
      public static const const_836:String = "WN_DISABLE";
      
      public static const const_915:String = "WN_DEACTIVATED";
      
      public static const const_1054:String = "WN_OPENED";
      
      public static const const_941:String = "WN_CLOSED";
      
      public static const const_989:String = "WN_DESTROY";
      
      public static const const_1533:String = "WN_ARRANGED";
      
      public static const const_409:String = "WN_PARENT_RESIZED";
      
      public static const const_934:String = "WN_ENABLE";
      
      public static const const_984:String = "WN_RELOCATE";
      
      public static const const_1057:String = "WN_FOCUS";
      
      public static const const_932:String = "WN_PARENT_RELOCATED";
      
      public static const const_461:String = "WN_PARAM_UPDATED";
      
      public static const const_583:String = "WN_PARENT_ACTIVATED";
      
      public static const const_162:String = "WN_RESIZED";
      
      public static const const_1037:String = "WN_CLOSE";
      
      public static const const_939:String = "WN_PARENT_REMOVED";
      
      public static const const_252:String = "WN_CHILD_RELOCATED";
      
      public static const const_535:String = "WN_ENABLED";
      
      public static const const_254:String = "WN_CHILD_RESIZED";
      
      public static const const_1023:String = "WN_MINIMIZED";
      
      public static const const_611:String = "WN_DISABLED";
      
      public static const const_220:String = "WN_CHILD_ACTIVATED";
      
      public static const const_445:String = "WN_STATE_UPDATED";
      
      public static const const_545:String = "WN_UNSELECTED";
      
      public static const const_471:String = "WN_STYLE_UPDATED";
      
      public static const const_1705:String = "WN_UPDATE";
      
      public static const const_504:String = "WN_PARENT_ADDED";
      
      public static const const_683:String = "WN_RESIZE";
      
      public static const const_724:String = "WN_CHILD_REMOVED";
      
      public static const const_1664:String = "";
      
      public static const const_907:String = "WN_RESTORED";
      
      public static const const_346:String = "WN_SELECTED";
      
      public static const const_839:String = "WN_MINIMIZE";
      
      public static const const_975:String = "WN_FOCUSED";
      
      public static const const_1381:String = "WN_LOCK";
      
      public static const const_359:String = "WN_CHILD_ADDED";
      
      public static const const_1003:String = "WN_UNFOCUSED";
      
      public static const const_398:String = "WN_RELOCATED";
      
      public static const const_912:String = "WN_DEACTIVATE";
      
      public static const const_1436:String = "WN_CRETAE";
      
      public static const const_902:String = "WN_RESTORE";
      
      public static const const_317:String = "WN_ACTVATED";
      
      public static const const_1404:String = "WN_LOCKED";
      
      public static const const_401:String = "WN_SELECT";
      
      public static const const_981:String = "WN_MAXIMIZE";
      
      public static const const_1049:String = "WN_OPEN";
      
      public static const const_541:String = "WN_UNSELECT";
      
      public static const const_1531:String = "WN_ARRANGE";
      
      public static const const_1364:String = "WN_UNLOCKED";
      
      public static const const_1683:String = "WN_UPDATED";
      
      public static const const_931:String = "WN_ACTIVATE";
      
      public static const const_1409:String = "WN_UNLOCK";
      
      public static const const_1005:String = "WN_MAXIMIZED";
      
      public static const const_864:String = "WN_DESTROYED";
      
      public static const const_844:String = "WN_UNFOCUS";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1725,cancelable);
      }
   }
}
