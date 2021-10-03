package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.incoming.userdefinedroomevents.UserDefinedRoomEvents;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1486:int = 10;
       
      
      private var var_2252:Boolean;
      
      private var var_2253:int;
      
      private var var_1416:int;
      
      private var var_2256:Boolean;
      
      private var var_1165:Array;
      
      private var var_982:Dictionary;
      
      private var var_1164:Array;
      
      private var var_2486:int;
      
      private var var_2254:int;
      
      private var var_2251:UserDefinedRoomEvents;
      
      private var var_1669:int;
      
      private var var_2258:int;
      
      private var var_1777:int;
      
      private var var_672:PublicRoomShortData;
      
      private var var_461:RoomEventData;
      
      private var var_146:MsgWithRequestId;
      
      private var var_2259:Boolean;
      
      private var var_2255:Array;
      
      private var _navigator:HabboNavigator;
      
      private var var_2257:Boolean;
      
      private var var_215:GuestRoomData;
      
      private var var_791:Boolean;
      
      private var var_671:Boolean;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         var_1165 = new Array();
         var_1164 = new Array();
         var_982 = new Dictionary();
         super();
         _navigator = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return var_146 != null && var_146 as PopularRoomTagsData != null;
      }
      
      public function get eventMod() : Boolean
      {
         return var_2257;
      }
      
      public function startLoading() : void
      {
         this.var_791 = true;
      }
      
      public function get createdFlatId() : int
      {
         return var_2253;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         var_2257 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(var_461 != null)
         {
            var_461.dispose();
         }
         var_461 = param1;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return false;
      }
      
      public function get homeRoomId() : int
      {
         return var_1669;
      }
      
      public function get stuffStates() : Array
      {
         return var_2255;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return var_146 != null && var_146 as GuestRoomSearchResultData != null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return var_146 as GuestRoomSearchResultData;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return var_215;
      }
      
      public function get allCategories() : Array
      {
         return var_1165;
      }
      
      public function onRoomExit() : void
      {
         if(var_461 != null)
         {
            var_461.dispose();
            var_461 = null;
         }
         if(var_672 != null)
         {
            var_672.dispose();
            var_672 = null;
         }
         if(var_215 != null)
         {
            var_215.dispose();
            var_215 = null;
         }
         var_671 = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         disposeCurrentMsg();
         var_146 = param1;
         var_791 = false;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(var_215 == null)
         {
            return false;
         }
         var _loc1_:int = 0;
         return this.var_1669 == _loc1_;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         disposeCurrentMsg();
         var_146 = param1;
         var_791 = false;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         var_672 = null;
         var_215 = null;
         var_671 = false;
         if(param1.guestRoom)
         {
            var_671 = param1.owner;
         }
         else
         {
            var_672 = param1.publicSpace;
            var_461 = null;
         }
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return var_671;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2486 = param1.limit;
         this.var_1416 = param1.favouriteRoomIds.length;
         this.var_982 = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this.var_982[_loc2_] = "yes";
         }
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return var_146 as PopularRoomTagsData;
      }
      
      public function get settingsReceived() : Boolean
      {
         return var_2252;
      }
      
      public function set stuffStates(param1:Array) : void
      {
         var_2255 = param1;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return var_672;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         disposeCurrentMsg();
         var_146 = param1;
         var_791 = false;
      }
      
      public function set avatarId(param1:int) : void
      {
         var_1777 = param1;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return var_215 != null && var_671;
      }
      
      public function get userDefinedRoomEvents() : UserDefinedRoomEvents
      {
         return var_2251;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return var_2256;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         var_1165 = param1;
         var_1164 = new Array();
         for each(_loc2_ in var_1165)
         {
            if(_loc2_.visible)
            {
               var_1164.push(_loc2_);
            }
         }
      }
      
      public function get currentRoomRating() : int
      {
         return var_2254;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return var_2258;
      }
      
      public function get visibleCategories() : Array
      {
         return var_1164;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(var_146 == null)
         {
            return;
         }
         var_146.dispose();
         var_146 = null;
      }
      
      public function set settingsReceived(param1:Boolean) : void
      {
         var_2252 = param1;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return var_461;
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         var_982[param1] = !!param2 ? "yes" : null;
         var_1416 += !!param2 ? 1 : -1;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return var_146 as OfficialRoomsData;
      }
      
      public function get avatarId() : int
      {
         return var_1777;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = 0;
         return false;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return var_146 != null && var_146 as OfficialRoomsData != null;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         var_2256 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         var_2254 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         var_2259 = param1;
      }
      
      public function set userDefinedRoomEvents(param1:UserDefinedRoomEvents) : void
      {
         var_2251 = param1;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_791;
      }
      
      public function set homeRoomId(param1:int) : void
      {
         var_1669 = param1;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return var_1416 >= var_2486;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(var_215 != null)
         {
            var_215.dispose();
         }
         var_215 = param1;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         var_2258 = param1;
      }
      
      public function get hcMember() : Boolean
      {
         return var_2259;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return var_215 != null && !var_671;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         var_2253 = param1;
      }
   }
}
