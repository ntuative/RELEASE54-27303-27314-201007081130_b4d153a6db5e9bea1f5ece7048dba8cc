package com.sulake.habbo.friendlist
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.friendlist.events.HabboFriendListTrackingEvent;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.utils.Dictionary;
   
   public class FriendListView
   {
      
      private static const const_1468:String = "noconvinfo";
      
      private static const const_1467:String = "messageinput";
       
      
      private var var_1583:int = -1;
      
      private var var_895:IWindowContainer;
      
      private var _friendList:HabboFriendList;
      
      private var var_1582:int = -1;
      
      private var var_1327:ITextWindow;
      
      private var var_1328:FriendListTabsView;
      
      private var var_18:IFrameWindow;
      
      private var var_269:IWindowContainer;
      
      private var var_1994:Boolean;
      
      public function FriendListView(param1:HabboFriendList)
      {
         super();
         _friendList = param1;
         var_1328 = new FriendListTabsView(_friendList);
      }
      
      private function prepare() : void
      {
         var_18 = IFrameWindow(_friendList.getXmlWindow("main_window"));
         var_18.findChildByTag("close").procedure = onWindowClose;
         var_895 = IWindowContainer(var_18.content.findChildByName("main_content"));
         var_269 = IWindowContainer(var_18.content.findChildByName("footer"));
         var_1328.prepare(var_895);
         var_18.procedure = onWindow;
         var_18.content.setParamFlag(HabboWindowParam.const_1042,false);
         var_18.content.setParamFlag(HabboWindowParam.const_1413,true);
         var_18.header.setParamFlag(HabboWindowParam.const_735,false);
         var_18.header.setParamFlag(HabboWindowParam.const_1029,true);
         var_18.content.setParamFlag(HabboWindowParam.const_735,false);
         var_18.content.setParamFlag(HabboWindowParam.const_1029,true);
         var_18.findChildByName("open_edit_ctgs_but").procedure = onEditCategoriesButtonClick;
         var_1327 = ITextWindow(var_18.findChildByName("info_text"));
         var_1327.text = "";
         _friendList.refreshButton(var_18,"open_edit_ctgs",true,null,0);
         var_18.title.color = 4294623744;
         var_18.title.textColor = 4287851525;
         refresh("prepare");
         var_18.height = 350;
         var_18.width = 230;
      }
      
      private function onWindowClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Close window");
         var_18.visible = false;
         _friendList.trackFriendListEvent(HabboFriendListTrackingEvent.HABBO_FRIENDLIST_TRACKIG_EVENT_CLOSED);
      }
      
      public function showInfo(param1:WindowEvent, param2:String) : void
      {
         var _loc3_:WindowMouseEvent = param1 as WindowMouseEvent;
         if(_loc3_ == null)
         {
            return;
         }
         if(_loc3_.type == WindowMouseEvent.const_27)
         {
            var_1327.text = "";
         }
         else if(_loc3_.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            var_1327.text = param2;
         }
      }
      
      public function openFriendList() : void
      {
         if(var_18 == null)
         {
            prepare();
            _friendList.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_45,HabboToolbarIconEnum.FRIENDLIST,var_18));
         }
         else
         {
            var_18.visible = true;
            var_18.activate();
         }
      }
      
      private function getTitleBar() : IWindowContainer
      {
         return var_18.findChildByName("titlebar") as IWindowContainer;
      }
      
      public function get tabsView() : FriendListTabsView
      {
         return var_1328;
      }
      
      private function refreshWindowSize() : void
      {
         this.var_1994 = true;
         var_269.visible = false;
         var_269.y = Util.getLowestPoint(var_18.content);
         var_269.width = _friendList.tabs.windowWidth;
         var_269.visible = true;
         var_18.content.height = Util.getLowestPoint(var_18.content);
         var_18.content.width = _friendList.tabs.windowWidth - 10;
         var_18.header.width = _friendList.tabs.windowWidth - 10;
         var_18.height = var_18.content.height + 30;
         var_18.width = _friendList.tabs.windowWidth;
         this.var_1994 = false;
         var_18.scaler.setParamFlag(HabboWindowParam.const_612,false);
         var_18.scaler.setParamFlag(HabboWindowParam.const_935,this._friendList.tabs.findSelectedTab() != null);
         var_18.scaler.setParamFlag(HabboWindowParam.const_735,false);
         var_18.scaler.setParamFlag(HabboWindowParam.const_1042,false);
         var_18.scaler.x = 0 - var_18.scaler.width;
         var_18.scaler.y = 0 - var_18.scaler.height;
         var_1582 = var_18.height;
         var_1583 = var_18.width;
         Logger.log("RESIZED: " + _friendList.tabs.windowWidth);
      }
      
      public function isFriendListOpen() : Boolean
      {
         return var_18 != null && false;
      }
      
      public function refresh(param1:String) : void
      {
         if(this.var_18 == null)
         {
            return;
         }
         var_1328.refresh(param1);
         refreshWindowSize();
      }
      
      public function get mainWindow() : IWindowContainer
      {
         return var_18;
      }
      
      private function onWindow(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_43 || param2 != var_18)
         {
            return;
         }
         if(this.var_1994)
         {
            return;
         }
         var _loc3_:int = var_1582 == -1 ? 0 : int(0 - var_1582);
         var _loc4_:int = var_1583 == -1 ? 0 : int(0 - var_1583);
         _friendList.tabs.tabContentHeight = Math.max(100,_friendList.tabs.tabContentHeight + _loc3_);
         _friendList.tabs.windowWidth = Math.max(147,_friendList.tabs.windowWidth + _loc4_);
         refresh("resize: " + _loc3_);
      }
      
      private function onEditCategoriesButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         _friendList.view.showInfo(param1,"${friendlist.tip.preferences}");
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Edit categories clicked");
         var _loc3_:WindowMouseEvent = param1 as WindowMouseEvent;
         _friendList.openHabboWebPage("link.format.friendlist.pref",new Dictionary(),_loc3_.stageX,_loc3_.stageY);
      }
      
      public function close() : void
      {
         if(this.var_18 != null)
         {
            this.var_18.visible = false;
         }
      }
   }
}
