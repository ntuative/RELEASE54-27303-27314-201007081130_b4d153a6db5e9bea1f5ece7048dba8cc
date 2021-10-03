package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_741:int = 6;
      
      public static const const_228:int = 5;
      
      public static const const_762:int = 2;
      
      public static const const_321:int = 9;
      
      public static const const_332:int = 4;
      
      public static const const_255:int = 2;
      
      public static const const_587:int = 4;
      
      public static const const_236:int = 8;
      
      public static const const_529:int = 7;
      
      public static const const_279:int = 3;
      
      public static const const_337:int = 1;
      
      public static const const_241:int = 5;
      
      public static const const_384:int = 12;
      
      public static const const_336:int = 1;
      
      public static const const_668:int = 11;
      
      public static const const_540:int = 3;
      
      public static const const_1635:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_432:Array;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_432 = new Array();
         var_432.push(new Tab(_navigator,const_337,const_384,new EventsTabPageDecorator(_navigator),MainViewCtrl.const_390));
         var_432.push(new Tab(_navigator,const_255,const_336,new RoomsTabPageDecorator(_navigator),MainViewCtrl.const_390));
         var_432.push(new Tab(_navigator,const_332,const_668,new OfficialTabPageDecorator(_navigator),MainViewCtrl.const_1043));
         var_432.push(new Tab(_navigator,const_279,const_228,new MyRoomsTabPageDecorator(_navigator),MainViewCtrl.const_390));
         var_432.push(new Tab(_navigator,const_241,const_236,new SearchTabPageDecorator(_navigator),MainViewCtrl.const_570));
         setSelectedTab(const_337);
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_432)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_432)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_432)
         {
            _loc1_.selected = false;
         }
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_332;
      }
      
      public function get tabs() : Array
      {
         return var_432;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         getTab(param1).selected = true;
      }
   }
}
