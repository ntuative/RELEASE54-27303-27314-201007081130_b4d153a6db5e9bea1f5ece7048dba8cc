package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_750;
         param1["bitmap"] = const_689;
         param1["border"] = const_746;
         param1["border_notify"] = const_1315;
         param1["button"] = const_436;
         param1["button_thick"] = const_696;
         param1["button_icon"] = const_1432;
         param1["button_group_left"] = const_660;
         param1["button_group_center"] = const_679;
         param1["button_group_right"] = const_723;
         param1["canvas"] = const_534;
         param1["checkbox"] = const_655;
         param1["closebutton"] = const_1024;
         param1["container"] = const_304;
         param1["container_button"] = const_749;
         param1["display_object_wrapper"] = const_767;
         param1["dropmenu"] = const_396;
         param1["dropmenu_item"] = const_435;
         param1["frame"] = const_342;
         param1["frame_notify"] = const_1352;
         param1["header"] = const_560;
         param1["icon"] = const_889;
         param1["itemgrid"] = const_924;
         param1["itemgrid_horizontal"] = const_451;
         param1["itemgrid_vertical"] = const_533;
         param1["itemlist"] = const_946;
         param1["itemlist_horizontal"] = const_316;
         param1["itemlist_vertical"] = const_360;
         param1["maximizebox"] = const_1355;
         param1["menu"] = WINDOW_TYPE_MENU;
         param1["menu_item"] = const_1325;
         param1["submenu"] = const_969;
         param1["minimizebox"] = const_1264;
         param1["notify"] = const_1415;
         param1["null"] = const_607;
         param1["password"] = const_604;
         param1["radiobutton"] = const_705;
         param1["region"] = const_412;
         param1["restorebox"] = const_1433;
         param1["scaler"] = const_680;
         param1["scaler_horizontal"] = const_1245;
         param1["scaler_vertical"] = const_1369;
         param1["scrollbar_horizontal"] = const_407;
         param1["scrollbar_vertical"] = const_706;
         param1["scrollbar_slider_button_up"] = const_848;
         param1["scrollbar_slider_button_down"] = const_974;
         param1["scrollbar_slider_button_left"] = const_868;
         param1["scrollbar_slider_button_right"] = const_855;
         param1["scrollbar_slider_bar_horizontal"] = const_843;
         param1["scrollbar_slider_bar_vertical"] = const_945;
         param1["scrollbar_slider_track_horizontal"] = const_951;
         param1["scrollbar_slider_track_vertical"] = const_856;
         param1["scrollable_itemlist"] = const_1267;
         param1["scrollable_itemlist_vertical"] = const_500;
         param1["scrollable_itemlist_horizontal"] = const_873;
         param1["selector"] = const_635;
         param1["selector_list"] = const_585;
         param1["submenu"] = const_969;
         param1["tab_button"] = const_542;
         param1["tab_container_button"] = const_991;
         param1["tab_context"] = WINDOW_TYPE_TAB_CONTEXT;
         param1["tab_content"] = const_992;
         param1["tab_selector"] = const_552;
         param1["text"] = const_720;
         param1["input"] = const_657;
         param1["toolbar"] = const_1284;
         param1["tooltip"] = const_312;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  Logger.log("Overlapping window type code " + _loc3_ + "!");
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
