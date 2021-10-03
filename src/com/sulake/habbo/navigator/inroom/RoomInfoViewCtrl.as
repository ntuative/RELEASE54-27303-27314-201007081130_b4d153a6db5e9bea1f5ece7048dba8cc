package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.userdefinedroomevents.GetEventsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.navigator.userdefinedroomevents.UserDefinedRoomEventsCtrl;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var var_775:IWindowContainer;
      
      private var var_1142:ITextWindow;
      
      private var var_186:RoomSettingsCtrl;
      
      private var var_1397:IContainerButtonWindow;
      
      private var _window:IWindowContainer;
      
      private var var_212:Timer;
      
      private var var_2197:IWindowContainer;
      
      private var var_1401:ITextWindow;
      
      private var var_379:IWindowContainer;
      
      private var var_2198:ITextWindow;
      
      private var var_965:IWindowContainer;
      
      private var var_211:UserDefinedRoomEventsCtrl;
      
      private var var_1656:IButtonWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_809:ITextWindow;
      
      private var var_1655:IWindowContainer;
      
      private var var_1399:IWindowContainer;
      
      private var var_962:ITextWindow;
      
      private var var_1140:ITextFieldWindow;
      
      private var var_290:IWindowContainer;
      
      private var var_963:ITextWindow;
      
      private var var_1657:IButtonWindow;
      
      private var var_1141:ITextWindow;
      
      private var var_2484:int;
      
      private var var_1395:IContainerButtonWindow;
      
      private var var_964:IWindowContainer;
      
      private var var_1400:ITextWindow;
      
      private var var_1398:IContainerButtonWindow;
      
      private var var_1658:ITextWindow;
      
      private var var_848:TagRenderer;
      
      private var var_1654:IButtonWindow;
      
      private var var_1882:ITextWindow;
      
      private var var_327:RoomEventViewCtrl;
      
      private var _navigator:HabboNavigator;
      
      private var var_774:ITextWindow;
      
      private var var_251:RoomThumbnailCtrl;
      
      private var var_1396:IContainerButtonWindow;
      
      private var var_2199:IWindowContainer;
      
      private var var_291:IWindowContainer;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_327 = new RoomEventViewCtrl(_navigator);
         var_186 = new RoomSettingsCtrl(_navigator,this,true);
         var_251 = new RoomThumbnailCtrl(_navigator);
         var_211 = new UserDefinedRoomEventsCtrl(_navigator);
         var_848 = new TagRenderer(_navigator);
         _navigator.roomSettingsCtrls.push(this.var_186);
         var_212 = new Timer(6000,1);
         var_212.addEventListener(TimerEvent.TIMER,hideInfo);
      }
      
      public function backToRoomSettings() : void
      {
         this.var_186.active = true;
         this.var_327.active = false;
         this.var_251.active = false;
         this.var_211.active = false;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(false)
         {
            return;
         }
         var_1656.visible = param1 == null && _navigator.data.currentRoomOwner;
         var_1654.visible = param1 != null && (_navigator.data.currentRoomOwner || _navigator.data.eventMod);
         var_1655.visible = Util.hasVisibleChildren(var_1655);
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || false || false || false)
         {
            return;
         }
         var_809.text = param1.roomName;
         var_809.height = NaN;
         _ownerName.text = param1.ownerName;
         var_962.text = param1.description;
         var_848.refreshTags(var_379,param1.tags);
         var_962.visible = false;
         if(param1.description != "")
         {
            var_962.height = NaN;
            var_962.visible = true;
         }
         var _loc3_:* = _navigator.data.currentRoomRating == -1;
         _navigator.refreshButton(var_379,"thumb_up",_loc3_,onThumbUp,0);
         _navigator.refreshButton(var_379,"thumb_down",_loc3_,onThumbDown,0);
         var_2198.visible = _loc3_;
         var_963.visible = !_loc3_;
         var_1658.visible = !_loc3_;
         var_1658.text = "" + _navigator.data.currentRoomRating;
         _navigator.refreshButton(var_379,"home",param2,null,0);
         _navigator.refreshButton(var_379,"favourite",!param2 && _navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(var_379,["room_name","owner_name_cont","tags","room_desc","rating_cont"],var_809.y,0);
         var_379.visible = true;
         var_379.height = Util.getLowestPoint(var_379);
      }
      
      private function getButtonsMinHeight() : int
      {
         return !!_navigator.data.currentRoomOwner ? 0 : 21;
      }
      
      public function startUserDefinedRoomEventsEdit() : void
      {
         this.var_212.reset();
         this.var_186.active = false;
         this.var_327.active = false;
         this.var_251.active = false;
         this.var_211.active = true;
         _navigator.send(new GetEventsMessageComposer());
      }
      
      public function dispose() : void
      {
         if(var_212)
         {
            var_212.removeEventListener(TimerEvent.TIMER,hideInfo);
            var_212.reset();
            var_212 = null;
         }
      }
      
      private function onThumbUp(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function getRoomInfoMinHeight() : int
      {
         return 37;
      }
      
      private function hideInfo(param1:Event) : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_470,HabboToolbarIconEnum.ROOMINFO,_window,false));
      }
      
      public function onAddFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(_navigator.data.isFavouritesFull())
         {
            _loc3_ = new SimpleAlertView(_navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc3_.show();
         }
         else
         {
            _navigator.send(new AddFavouriteRoomMessageComposer(_navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(_navigator.data.enteredGuestRoom == null || false || false || false)
         {
            return;
         }
         var_1657.visible = _navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = _navigator.data.isCurrentRoomFavourite();
         var_1397.visible = _navigator.data.canAddFavourite && !_loc2_;
         var_1396.visible = _navigator.data.canAddFavourite && _loc2_;
         var_1395.visible = _navigator.data.canEditRoomSettings && !param1;
         var_1398.visible = _navigator.data.canEditRoomSettings && param1;
         var_1399.visible = Util.hasVisibleChildren(var_1399);
      }
      
      public function open(param1:Boolean) : void
      {
         this.var_212.reset();
         this.var_327.active = false;
         this.var_186.active = false;
         this.var_251.active = false;
         this.var_211.active = false;
         if(param1)
         {
            this.startRoomSettingsEdit(_navigator.data.enteredGuestRoom.flatId);
         }
         refresh();
         _window.visible = true;
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_45,HabboToolbarIconEnum.ROOMINFO,_window,false));
         _window.parent.activate();
         _window.activate();
         if(!param1)
         {
            this.var_212.start();
         }
      }
      
      public function toggle() : void
      {
         this.var_212.reset();
         this.var_327.active = false;
         this.var_186.active = false;
         this.var_251.active = false;
         this.var_211.active = false;
         refresh();
         if(true)
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_45,HabboToolbarIconEnum.ROOMINFO,_window,false));
            _window.parent.activate();
         }
         else
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_470,HabboToolbarIconEnum.ROOMINFO,_window,false));
         }
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(var_290);
         var_290.findChildByName("close").visible = true;
         var _loc1_:GuestRoomData = _navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _loc1_ != null && _loc1_.flatId == _navigator.data.homeRoomId;
         refreshRoomDetails(_loc1_,_loc2_);
         refreshPublicSpaceDetails(_navigator.data.enteredPublicSpace);
         refreshRoomButtons(_loc2_);
         this.var_186.refresh(var_290);
         this.var_251.refresh(var_290);
         this.var_211.refresh(var_290);
         Util.moveChildrenToColumn(var_290,["room_details","room_buttons"],0,2);
         var_290.height = Util.getLowestPoint(var_290);
         var_290.visible = true;
         Logger.log("XORP: undefined, undefined, undefined, undefined, undefined");
      }
      
      private function onCloseButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         hideInfo(null);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var_1140.setSelection(0,var_1140.text.length);
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(_navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + _navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + _navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = _navigator.configuration.getKey("user.hash","");
         _navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         _navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         _navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return _navigator.getText("navigator.embed.src");
      }
      
      private function onThumbDown(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(-1));
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(var_291);
         var _loc1_:RoomEventData = _navigator.data.roomEventData;
         refreshEventDetails(_loc1_);
         refreshEventButtons(_loc1_);
         this.var_327.refresh(var_291);
         if(Util.hasVisibleChildren(var_291) && !(this.var_251.active || this.var_211.active))
         {
            Util.moveChildrenToColumn(var_291,["event_details","event_buttons"],0,2);
            var_291.height = Util.getLowestPoint(var_291);
            var_291.visible = true;
         }
         else
         {
            var_291.visible = false;
         }
         Logger.log("EVENT: undefined, undefined");
      }
      
      public function startEventEdit() : void
      {
         this.var_212.reset();
         this.var_327.active = true;
         this.var_186.active = false;
         this.var_251.active = false;
         this.var_211.active = false;
         this.reload();
      }
      
      private function getEventInfoMinHeight() : int
      {
         return 18;
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         _navigator.send(new DeleteFavouriteRoomMessageComposer(_navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onHover(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            return;
         }
         var_212.reset();
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || false || false || false)
         {
            return;
         }
         var_1142.text = _navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         var_1142.height = NaN;
         var_1401.text = _navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         var_1401.height = NaN;
         Util.moveChildrenToColumn(var_775,["public_space_name","public_space_desc"],var_1142.y,0);
         var_775.visible = true;
         var_775.height = Math.max(86,Util.getLowestPoint(var_775));
      }
      
      public function reload() : void
      {
         if(_window != null && false)
         {
            refresh();
         }
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = _window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      public function get userDefinedRoomEventsCtrl() : UserDefinedRoomEventsCtrl
      {
         return var_211;
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = _navigator.configuration.getKey("embed.showInRoomInfo","false") == "HabboFriendListCom_arrow_right_black_png";
         if(_loc1_ && true && true && true && true)
         {
            var_964.visible = true;
            var_1140.text = this.getEmbedData();
         }
         else
         {
            var_964.visible = false;
         }
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this.var_212.reset();
         this.var_186.load(param1);
         this.var_186.active = true;
         this.var_327.active = false;
         this.var_251.active = false;
         this.var_211.active = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this.var_212.reset();
         this.var_186.active = false;
         this.var_327.active = false;
         this.var_251.active = true;
         this.var_211.active = false;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      private function prepareWindow() : void
      {
         if(_window != null)
         {
            return;
         }
         _window = IWindowContainer(_navigator.getXmlWindow("iro_room_details"));
         _window.setParamFlag(HabboWindowParam.const_67,false);
         _window.setParamFlag(HabboWindowParam.const_1394,true);
         _window.visible = false;
         var_290 = IWindowContainer(find("room_info"));
         var_379 = IWindowContainer(find("room_details"));
         var_775 = IWindowContainer(find("public_space_details"));
         var_2199 = IWindowContainer(find("owner_name_cont"));
         var_2197 = IWindowContainer(find("rating_cont"));
         var_1399 = IWindowContainer(find("room_buttons"));
         var_809 = ITextWindow(find("room_name"));
         var_1142 = ITextWindow(find("public_space_name"));
         _ownerName = ITextWindow(find("owner_name"));
         var_962 = ITextWindow(find("room_desc"));
         var_1401 = ITextWindow(find("public_space_desc"));
         var_1141 = ITextWindow(find("owner_caption"));
         var_963 = ITextWindow(find("rating_caption"));
         var_2198 = ITextWindow(find("rate_caption"));
         var_1658 = ITextWindow(find("rating_txt"));
         var_291 = IWindowContainer(find("event_info"));
         var_965 = IWindowContainer(find("event_details"));
         var_1655 = IWindowContainer(find("event_buttons"));
         var_1882 = ITextWindow(find("event_name"));
         var_774 = ITextWindow(find("event_desc"));
         var_1397 = IContainerButtonWindow(find("add_favourite_button"));
         var_1396 = IContainerButtonWindow(find("rem_favourite_button"));
         var_1395 = IContainerButtonWindow(find("make_home_button"));
         var_1398 = IContainerButtonWindow(find("unmake_home_button"));
         var_1657 = IButtonWindow(find("room_settings_button"));
         var_1656 = IButtonWindow(find("create_event_button"));
         var_1654 = IButtonWindow(find("edit_event_button"));
         var_964 = IWindowContainer(find("embed_info"));
         var_1400 = ITextWindow(find("embed_info_txt"));
         var_1140 = ITextFieldWindow(find("embed_src_txt"));
         Util.setProcDirectly(var_1397,onAddFavouriteClick);
         Util.setProcDirectly(var_1396,onRemoveFavouriteClick);
         Util.setProcDirectly(var_1657,onRoomSettingsClick);
         Util.setProcDirectly(var_1395,onMakeHomeClick);
         Util.setProcDirectly(var_1398,onUnmakeHomeClick);
         Util.setProcDirectly(var_1656,onEventSettingsClick);
         Util.setProcDirectly(var_1654,onEventSettingsClick);
         Util.setProcDirectly(var_1140,onEmbedSrcClick);
         _navigator.refreshButton(var_1397,"favourite",true,null,0);
         _navigator.refreshButton(var_1396,"favourite",true,null,0);
         _navigator.refreshButton(var_1395,"home",true,null,0);
         _navigator.refreshButton(var_1398,"home",true,null,0);
         _window.findChildByName("close").procedure = onCloseButtonClick;
         Util.setProcDirectly(var_290,onHover);
         Util.setProcDirectly(var_291,onHover);
         var_1141.width = var_1141.textWidth;
         Util.moveChildrenToRow(var_2199,["owner_caption","owner_name"],var_1141.x,var_1141.y,3);
         var_963.width = var_963.textWidth;
         Util.moveChildrenToRow(var_2197,["rating_caption","rating_txt"],var_963.x,var_963.y,3);
         var_1400.height = NaN;
         Util.moveChildrenToColumn(var_964,["embed_info_txt","embed_src_txt"],var_1400.y,2);
         var_964.height = Util.getLowestPoint(var_964) + 5;
         var_2484 = NaN;
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || false)
         {
            return;
         }
         var_1882.text = param1.eventName;
         var_774.text = param1.eventDescription;
         var_848.refreshTags(var_965,[_navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         var_774.visible = false;
         if(param1.eventDescription != "")
         {
            var_774.height = NaN;
            var_774.y = Util.getLowestPoint(var_965) + 2;
            var_774.visible = true;
         }
         var_965.visible = true;
         var_965.height = Util.getLowestPoint(var_965);
      }
      
      private function refresh() : void
      {
         prepareWindow();
         refreshRoom();
         refreshEvent();
         refreshEmbed();
         Util.moveChildrenToColumn(this._window,["room_info","event_info","embed_info"],0,2);
         _window.height = Util.getLowestPoint(_window);
         _window.y = _window.desktop.height - 0 - 5;
         Logger.log("MAIN: undefined, undefined, undefined");
      }
      
      private function onRoomSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         startRoomSettingsEdit(_loc3_.flatId);
      }
      
      private function onUnmakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("CLEARING HOME ROOM:");
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(0));
      }
      
      private function onEventSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.roomEventData == null)
         {
            if(_navigator.data.currentRoomOwner)
            {
               _navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            startEventEdit();
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         refresh();
      }
      
      public function close() : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_885,HabboToolbarIconEnum.ROOMINFO,_window,false));
         if(_window == null)
         {
            return;
         }
         this._window.visible = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      private function onMakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc3_.flatId);
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc3_.flatId));
      }
   }
}
