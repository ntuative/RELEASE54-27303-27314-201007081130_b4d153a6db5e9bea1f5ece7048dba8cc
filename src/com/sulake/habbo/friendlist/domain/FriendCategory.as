package com.sulake.habbo.friendlist.domain
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.friendlist.Util;
   
   public class FriendCategory implements IDisposable
   {
      
      public static const const_965:int = 0;
      
      public static const const_477:int = -1;
      
      public static const const_303:int = 100;
       
      
      private var var_2113:Boolean;
      
      private var _disposed:Boolean;
      
      private var _view:IWindowContainer;
      
      private var var_941:int;
      
      private var var_246:Array;
      
      private var _open:Boolean;
      
      private var _name:String;
      
      private var _id:int;
      
      public function FriendCategory(param1:int, param2:String)
      {
         var_246 = [];
         super();
         _id = param1;
         _name = param2;
         _open = _id != const_477;
      }
      
      public function removeFriend(param1:int) : Friend
      {
         var _loc2_:Friend = getFriend(param1);
         if(_loc2_ != null)
         {
            Util.remove(var_246,_loc2_);
            return _loc2_;
         }
         return null;
      }
      
      public function get pageIndex() : int
      {
         return var_941;
      }
      
      public function set pageIndex(param1:int) : void
      {
         var_941 = param1;
      }
      
      public function set received(param1:Boolean) : void
      {
         var_2113 = param1;
      }
      
      public function getPageCount() : int
      {
         return Math.ceil(this.var_246.length / const_303);
      }
      
      public function setOpen(param1:Boolean) : void
      {
         var _loc2_:* = null;
         _open = param1;
         if(!param1)
         {
            for each(_loc2_ in var_246)
            {
               _loc2_.selected = false;
            }
         }
      }
      
      public function get open() : Boolean
      {
         return _open;
      }
      
      public function getFriend(param1:int) : Friend
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_246)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get friends() : Array
      {
         return var_246;
      }
      
      public function set view(param1:IWindowContainer) : void
      {
         _view = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      private function checkPageIndex() : void
      {
         if(this.var_941 >= this.getPageCount())
         {
            this.var_941 = Math.max(0,this.getPageCount() - 1);
         }
      }
      
      public function getSelectedFriends(param1:Array) : void
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_246)
         {
            if(_loc2_.selected)
            {
               param1.push(_loc2_);
            }
         }
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function get view() : IWindowContainer
      {
         return _view;
      }
      
      public function getStartFriendIndex() : int
      {
         checkPageIndex();
         return this.var_941 * const_303;
      }
      
      public function get received() : Boolean
      {
         return var_2113;
      }
      
      public function getFriendCount(param1:Boolean, param2:Boolean = false) : int
      {
         var _loc4_:* = null;
         var _loc3_:int = 0;
         for each(_loc4_ in var_246)
         {
            if((!param1 || _loc4_.online) && (!param2 || _loc4_.followingAllowed))
            {
               _loc3_ += 1;
            }
         }
         return _loc3_;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function addFriend(param1:Friend) : void
      {
         var _loc4_:* = null;
         if(var_246.indexOf(param1) >= 0)
         {
            return;
         }
         var _loc2_:String = param1.name.toLowerCase();
         var _loc3_:int = 0;
         while(_loc3_ < var_246.length)
         {
            _loc4_ = var_246[_loc3_];
            if(_loc2_ < _loc4_.name.toLowerCase())
            {
               var_246.splice(_loc3_,0,param1);
               return;
            }
            _loc3_++;
         }
         var_246.push(param1);
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         _view = null;
      }
      
      public function getEndFriendIndex() : int
      {
         checkPageIndex();
         return Math.min((this.var_941 + 1) * const_303,this.var_246.length);
      }
      
      public function set id(param1:int) : void
      {
         _id = param1;
      }
      
      public function get id() : int
      {
         return _id;
      }
   }
}
