package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.habbo.communication.messages.incoming.moderation.OffenceCategoryData;
   
   public class ModeratorInitData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1096:Array;
      
      private var var_2015:Boolean;
      
      private var var_1095:Array;
      
      private var var_2014:Boolean;
      
      private var var_2018:Boolean;
      
      private var var_2019:Boolean;
      
      private var var_159:Array;
      
      private var var_2016:Boolean;
      
      private var var_2020:Boolean;
      
      private var var_918:Array;
      
      private var var_2017:Boolean;
      
      private var var_2013:Boolean;
      
      public function ModeratorInitData(param1:IMessageDataWrapper)
      {
         super();
         var _loc2_:IssueInfoMessageParser = new IssueInfoMessageParser();
         var_159 = [];
         var_1095 = [];
         var_1096 = [];
         var_918 = [];
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(_loc2_.parse(param1))
            {
               var_159.push(_loc2_.issueData);
            }
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1095.push(param1.readString());
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_918.push(new OffenceCategoryData(param1));
            _loc4_++;
         }
         var_2016 = param1.readBoolean();
         var_2019 = param1.readBoolean();
         var_2014 = param1.readBoolean();
         var_2018 = param1.readBoolean();
         var_2013 = param1.readBoolean();
         var_2020 = param1.readBoolean();
         var_2015 = param1.readBoolean();
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1096.push(param1.readString());
            _loc4_++;
         }
         var_2017 = param1.readBoolean();
      }
      
      public function get banPermission() : Boolean
      {
         return var_2013;
      }
      
      public function get messageTemplates() : Array
      {
         return var_1095;
      }
      
      public function get alertPermission() : Boolean
      {
         return var_2014;
      }
      
      public function get roomKickPermission() : Boolean
      {
         return var_2015;
      }
      
      public function get cfhPermission() : Boolean
      {
         return var_2016;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         var_1095 = null;
         var_1096 = null;
         var_159 = null;
         for each(_loc1_ in var_918)
         {
            _loc1_.dispose();
         }
         var_918 = null;
      }
      
      public function get roomMessageTemplates() : Array
      {
         return var_1096;
      }
      
      public function get roomAlertPermission() : Boolean
      {
         return var_2020;
      }
      
      public function get kickPermission() : Boolean
      {
         return var_2018;
      }
      
      public function get offenceCategories() : Array
      {
         return var_918;
      }
      
      public function get issues() : Array
      {
         return var_159;
      }
      
      public function get bobbaFilterPermission() : Boolean
      {
         return var_2017;
      }
      
      public function get chatlogsPermission() : Boolean
      {
         return var_2019;
      }
   }
}
