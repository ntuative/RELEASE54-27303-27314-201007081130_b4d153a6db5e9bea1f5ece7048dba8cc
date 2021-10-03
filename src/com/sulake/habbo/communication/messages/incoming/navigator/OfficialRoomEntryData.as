package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1292:int = 4;
      
      public static const const_667:int = 3;
      
      public static const const_548:int = 2;
      
      public static const const_957:int = 1;
       
      
      private var var_1840:String;
      
      private var _disposed:Boolean;
      
      private var var_1842:int;
      
      private var var_1839:Boolean;
      
      private var var_939:String;
      
      private var var_871:PublicRoomData;
      
      private var var_1843:int;
      
      private var _index:int;
      
      private var var_1838:String;
      
      private var _type:int;
      
      private var var_1829:String;
      
      private var var_870:GuestRoomData;
      
      private var var_1841:String;
      
      private var _open:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         _index = param1.readInteger();
         var_1840 = param1.readString();
         var_1841 = param1.readString();
         var_1839 = param1.readInteger() == 1;
         var_1838 = param1.readString();
         var_939 = param1.readString();
         var_1843 = param1.readInteger();
         var_1842 = param1.readInteger();
         _type = param1.readInteger();
         if(_type == const_957)
         {
            var_1829 = param1.readString();
         }
         else if(_type == const_667)
         {
            var_871 = new PublicRoomData(param1);
         }
         else if(_type == const_548)
         {
            var_870 = new GuestRoomData(param1);
         }
      }
      
      public function get folderId() : int
      {
         return var_1843;
      }
      
      public function get popupCaption() : String
      {
         return var_1840;
      }
      
      public function get userCount() : int
      {
         return var_1842;
      }
      
      public function get open() : Boolean
      {
         return _open;
      }
      
      public function get showDetails() : Boolean
      {
         return var_1839;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_957)
         {
            return 0;
         }
         if(this.type == const_548)
         {
            return this.var_870.maxUserCount;
         }
         if(this.type == const_667)
         {
            return this.var_871.maxUsers;
         }
         return 0;
      }
      
      public function get popupDesc() : String
      {
         return var_1841;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(this.var_870 != null)
         {
            this.var_870.dispose();
            this.var_870 = null;
         }
         if(this.var_871 != null)
         {
            this.var_871.dispose();
            this.var_871 = null;
         }
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return var_870;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get picText() : String
      {
         return var_1838;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return var_871;
      }
      
      public function get picRef() : String
      {
         return var_939;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tag() : String
      {
         return var_1829;
      }
      
      public function toggleOpen() : void
      {
         _open = !_open;
      }
   }
}
