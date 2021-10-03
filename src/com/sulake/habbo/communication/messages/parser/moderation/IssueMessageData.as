package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_147:int = 1;
      
      public static const const_1375:int = 3;
      
      public static const const_463:int = 2;
       
      
      private var var_2092:int;
      
      private var var_1940:int;
      
      private var var_2089:int;
      
      private var var_1939:int;
      
      private var var_38:int;
      
      private var var_453:int;
      
      private var var_1314:int;
      
      private var var_1806:int;
      
      private var var_1132:int;
      
      private var _roomResources:String;
      
      private var var_2087:int;
      
      private var var_2091:int;
      
      private var var_2090:String;
      
      private var var_1805:String;
      
      private var var_2093:int = 0;
      
      private var var_1387:String;
      
      private var _message:String;
      
      private var var_1926:int;
      
      private var var_2088:String;
      
      private var var_1227:int;
      
      private var var_809:String;
      
      private var var_2086:String;
      
      private var var_1543:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function set reportedUserId(param1:int) : void
      {
         var_1132 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         var_2093 = param1;
      }
      
      public function get reporterUserId() : int
      {
         return var_2091;
      }
      
      public function set roomName(param1:String) : void
      {
         var_809 = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         var_2087 = param1;
      }
      
      public function get state() : int
      {
         return var_38;
      }
      
      public function get roomResources() : String
      {
         return _roomResources;
      }
      
      public function set roomResources(param1:String) : void
      {
         _roomResources = param1;
      }
      
      public function get roomName() : String
      {
         return var_809;
      }
      
      public function get message() : String
      {
         return _message;
      }
      
      public function set worldId(param1:int) : void
      {
         var_1939 = param1;
      }
      
      public function set state(param1:int) : void
      {
         var_38 = param1;
      }
      
      public function get unitPort() : int
      {
         return var_1940;
      }
      
      public function get priority() : int
      {
         return var_2092 + var_2093;
      }
      
      public function set issueId(param1:int) : void
      {
         var_1806 = param1;
      }
      
      public function get pickerUserName() : String
      {
         return var_1805;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - var_1543) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
      
      public function get categoryId() : int
      {
         return var_1227;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         var_2091 = param1;
      }
      
      public function get roomType() : int
      {
         return var_1314;
      }
      
      public function set flatType(param1:String) : void
      {
         var_2090 = param1;
      }
      
      public function get chatRecordId() : int
      {
         return var_2087;
      }
      
      public function set message(param1:String) : void
      {
         _message = param1;
      }
      
      public function get worldId() : int
      {
         return var_1939;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         var_2086 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         var_1387 = param1;
      }
      
      public function get issueId() : int
      {
         return var_1806;
      }
      
      public function set priority(param1:int) : void
      {
         var_2092 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         var_1940 = param1;
      }
      
      public function get flatType() : String
      {
         return var_2090;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         var_2089 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         var_1805 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         var_1926 = param1;
      }
      
      public function get reportedUserName() : String
      {
         return var_1387;
      }
      
      public function set roomType(param1:int) : void
      {
         var_1314 = param1;
      }
      
      public function get reportedCategoryId() : int
      {
         return var_2089;
      }
      
      public function set flatId(param1:int) : void
      {
         var_453 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1227 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         var_1543 = param1;
      }
      
      public function get pickerUserId() : int
      {
         return var_1926;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         var_2088 = param1;
      }
      
      public function get timeStamp() : int
      {
         return var_1543;
      }
      
      public function get reportedUserId() : int
      {
         return var_1132;
      }
      
      public function get flatId() : int
      {
         return var_453;
      }
      
      public function get flatOwnerName() : String
      {
         return var_2086;
      }
      
      public function get reporterUserName() : String
      {
         return var_2088;
      }
   }
}
