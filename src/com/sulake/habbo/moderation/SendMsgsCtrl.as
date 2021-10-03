package com.sulake.habbo.moderation
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IDropMenuWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.outgoing.moderator.ModMessageMessageComposer;
   import com.sulake.habbo.window.utils.IAlertDialog;
   import flash.events.Event;
   
   public class SendMsgsCtrl implements IDisposable, TrackedWindow
   {
       
      
      private var var_1441:String;
      
      private var _disposed:Boolean;
      
      private var var_1659:String;
      
      private var var_1440:int;
      
      private var _main:ModerationManager;
      
      private var var_967:IDropMenuWindow;
      
      private var var_470:ITextFieldWindow;
      
      private var var_54:IFrameWindow;
      
      private var var_331:Boolean = true;
      
      public function SendMsgsCtrl(param1:ModerationManager, param2:int, param3:String, param4:String)
      {
         super();
         _main = param1;
         var_1440 = param2;
         var_1659 = param3;
         var_1441 = param4;
      }
      
      private function onInputClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_212)
         {
            return;
         }
         if(!var_331)
         {
            return;
         }
         var_470.text = "";
         var_331 = false;
      }
      
      public function getFrame() : IFrameWindow
      {
         return var_54;
      }
      
      public function getId() : String
      {
         return var_1659;
      }
      
      private function onSendMessageButton(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Sending message...");
         if(var_331 || false)
         {
            _main.windowManager.alert("Alert","You must input a message to the user",0,onAlertClose);
            return;
         }
         _main.connection.send(new ModMessageMessageComposer(var_1440,var_470.text,var_1441));
         this.dispose();
      }
      
      public function show() : void
      {
         var_54 = IFrameWindow(_main.getXmlWindow("send_msgs"));
         var_54.caption = "Msg To: " + var_1659;
         var_54.findChildByName("send_message_but").procedure = onSendMessageButton;
         var_470 = ITextFieldWindow(var_54.findChildByName("message_input"));
         var_470.procedure = onInputClick;
         var_967 = IDropMenuWindow(var_54.findChildByName("msgTemplatesSelect"));
         prepareMsgSelect(var_967);
         var_967.procedure = onSelectTemplate;
         var _loc1_:IWindow = var_54.findChildByTag("close");
         _loc1_.procedure = onClose;
         var_54.visible = true;
      }
      
      private function prepareMsgSelect(param1:IDropMenuWindow) : void
      {
         Logger.log("MSG TEMPLATES: " + _main.initMsg.messageTemplates.length);
         param1.populate(_main.initMsg.messageTemplates);
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(var_54 != null)
         {
            var_54.destroy();
            var_54 = null;
         }
         var_967 = null;
         var_470 = null;
         _main = null;
      }
      
      private function onSelectTemplate(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_54)
         {
            return;
         }
         var _loc3_:String = _main.initMsg.messageTemplates["null"];
         if(_loc3_ != null)
         {
            var_331 = false;
            var_470.text = _loc3_;
         }
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      private function onClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         dispose();
      }
      
      private function onAlertClose(param1:IAlertDialog, param2:Event) : void
      {
         param1.dispose();
      }
      
      public function getType() : int
      {
         return WindowTracker.const_1303;
      }
   }
}
