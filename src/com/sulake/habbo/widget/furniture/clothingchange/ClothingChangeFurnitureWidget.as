package com.sulake.habbo.widget.furniture.clothingchange
{
   import com.sulake.core.assets.IAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.avatar.figuredata.FigureData;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.widget.RoomWidgetBase;
   import com.sulake.habbo.widget.events.RoomWidgetClothingChangeUpdateEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetClothingChangeMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.events.IEventDispatcher;
   import flash.geom.Rectangle;
   
   public class ClothingChangeFurnitureWidget extends RoomWidgetBase
   {
      
      private static const const_788:String = "Girl";
      
      private static const const_789:String = "Boy";
       
      
      private var _window:IWindowContainer;
      
      private var _roomCategory:int = 0;
      
      private var var_165:int = 0;
      
      private var var_622:IWindowContainer;
      
      private var _roomId:int = 0;
      
      private var var_1899:int = 0;
      
      public function ClothingChangeFurnitureWidget(param1:IHabboWindowManager, param2:IAssetLibrary = null, param3:IHabboLocalizationManager = null)
      {
         super(param1,param2,param3);
      }
      
      private function onGenderSelectionMouseEvent(param1:WindowMouseEvent) : void
      {
         var _loc2_:IWindow = param1.target as IWindow;
         var _loc3_:String = _loc2_.name;
         switch(_loc3_)
         {
            case const_789:
               requestBoyEditor();
               hideGenderSelectionInterface();
               break;
            case const_788:
               requestGirlEditor();
               hideGenderSelectionInterface();
               break;
            case "close":
            case "close_btn":
               hideGenderSelectionInterface();
         }
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.addEventListener(RoomWidgetClothingChangeUpdateEvent.const_300,onUpdate);
         param1.addEventListener(RoomWidgetClothingChangeUpdateEvent.const_886,onUpdate);
         param1.addEventListener(RoomWidgetClothingChangeUpdateEvent.const_326,onUpdate);
         super.registerUpdateEvents(param1);
      }
      
      private function onUpdate(param1:RoomWidgetClothingChangeUpdateEvent) : void
      {
         switch(param1.type)
         {
            case RoomWidgetClothingChangeUpdateEvent.const_300:
               showGenderSelectionInterface(param1);
               break;
            case RoomWidgetClothingChangeUpdateEvent.const_326:
               hideEditorInterface();
         }
      }
      
      private function requestBoyEditor() : void
      {
         requestEditor(FigureData.const_72);
      }
      
      private function showGenderSelectionInterface(param1:RoomWidgetClothingChangeUpdateEvent) : void
      {
         hideGenderSelectionInterface();
         var_165 = param1.objectId;
         var_1899 = param1.objectCategory;
         _roomId = param1.roomId;
         _roomCategory = param1.roomCategory;
         var _loc2_:IAsset = assets.getAssetByName("boygirl");
         var _loc3_:XmlAsset = XmlAsset(_loc2_);
         if(_loc3_ == null)
         {
            return;
         }
         _window = windowManager.createWindow("clothing change gender selection","",HabboWindowType.const_51,HabboWindowStyle.const_36,0 | 0 | 0 | 0,new Rectangle(100,100,200,200),null,0) as IWindowContainer;
         _window.buildFromXML(XML(_loc3_.content));
         _window.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onGenderSelectionMouseEvent);
         _window.center();
         var _loc4_:IWindow = _window.findChildByTag("close");
         if(_loc4_ != null)
         {
            _loc4_.procedure = onGenderSelectionWindowClose;
         }
         _loc4_ = _window.findChildByName(const_789);
         if(_loc4_ != null)
         {
            _loc4_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onGenderSelectionMouseEvent);
         }
         _loc4_ = _window.findChildByName(const_788);
         if(_loc4_ != null)
         {
            _loc4_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onGenderSelectionMouseEvent);
         }
      }
      
      private function hideGenderSelectionInterface() : void
      {
         if(_window != null)
         {
            _window.dispose();
            _window = null;
         }
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetClothingChangeUpdateEvent.const_300,onUpdate);
         param1.removeEventListener(RoomWidgetClothingChangeUpdateEvent.const_886,onUpdate);
         param1.removeEventListener(RoomWidgetClothingChangeUpdateEvent.const_326,onUpdate);
      }
      
      override public function dispose() : void
      {
         hideGenderSelectionInterface();
         hideEditorInterface();
         super.dispose();
      }
      
      private function onGenderSelectionWindowClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         hideGenderSelectionInterface();
      }
      
      private function requestGirlEditor() : void
      {
         requestEditor(FigureData.FEMALE);
      }
      
      private function requestEditor(param1:String) : void
      {
         hideEditorInterface();
         var _loc2_:IAsset = assets.getAssetByName("editor");
         var _loc3_:XmlAsset = XmlAsset(_loc2_);
         if(_loc3_ == null)
         {
            return;
         }
         var _loc4_:IFrameWindow = windowManager.buildFromXML(XML(_loc3_.content)) as IFrameWindow;
         var _loc5_:IWindowContainer = _loc4_.content;
         _loc5_.setParamFlag(HabboWindowParam.const_97,true);
         var_622 = _loc4_;
         var_622.offset(100,100);
         var _loc6_:IWindow = var_622.findChildByTag("close");
         if(_loc6_ != null)
         {
            _loc6_.procedure = onEditorWindowClose;
         }
         var _loc7_:* = null;
         _loc7_ = new RoomWidgetClothingChangeMessage(RoomWidgetClothingChangeMessage.const_311,param1,var_165,var_1899,_roomId,_roomCategory,_loc5_);
         messageListener.processWidgetMessage(_loc7_);
      }
      
      private function hideEditorInterface() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(var_622 != null)
         {
            _loc1_ = var_622 as IFrameWindow;
            if(_loc1_ != null)
            {
               _loc2_ = _loc1_.content;
               while(_loc2_.numChildren > 0)
               {
                  _loc2_.removeChildAt(0);
               }
            }
            var_622.dispose();
            var_622 = null;
         }
      }
      
      private function onEditorWindowClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         hideEditorInterface();
      }
   }
}
