package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_137;
         param1["bound_to_parent_rect"] = const_89;
         param1["child_window"] = const_1035;
         param1["embedded_controller"] = const_340;
         param1["resize_to_accommodate_children"] = const_63;
         param1["input_event_processor"] = const_46;
         param1["internal_event_handling"] = const_753;
         param1["mouse_dragging_target"] = const_201;
         param1["mouse_dragging_trigger"] = const_338;
         param1["mouse_scaling_target"] = const_248;
         param1["mouse_scaling_trigger"] = const_454;
         param1["horizontal_mouse_scaling_trigger"] = const_195;
         param1["vertical_mouse_scaling_trigger"] = const_244;
         param1["observe_parent_input_events"] = const_993;
         param1["optimize_region_to_layout_size"] = const_434;
         param1["parent_window"] = const_876;
         param1["relative_horizontal_scale_center"] = const_182;
         param1["relative_horizontal_scale_fixed"] = const_120;
         param1["relative_horizontal_scale_move"] = const_306;
         param1["relative_horizontal_scale_strech"] = const_285;
         param1["relative_scale_center"] = const_958;
         param1["relative_scale_fixed"] = const_709;
         param1["relative_scale_move"] = const_942;
         param1["relative_scale_strech"] = const_1055;
         param1["relative_vertical_scale_center"] = const_164;
         param1["relative_vertical_scale_fixed"] = const_135;
         param1["relative_vertical_scale_move"] = const_314;
         param1["relative_vertical_scale_strech"] = const_261;
         param1["on_resize_align_left"] = const_610;
         param1["on_resize_align_right"] = const_495;
         param1["on_resize_align_center"] = const_416;
         param1["on_resize_align_top"] = const_649;
         param1["on_resize_align_bottom"] = const_376;
         param1["on_resize_align_middle"] = const_455;
         param1["on_accommodate_align_left"] = const_1000;
         param1["on_accommodate_align_right"] = const_476;
         param1["on_accommodate_align_center"] = const_595;
         param1["on_accommodate_align_top"] = const_849;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_596;
         param1["route_input_events_to_parent"] = const_399;
         param1["use_parent_graphic_context"] = const_30;
         param1["draggable_with_mouse"] = const_1044;
         param1["scalable_with_mouse"] = const_898;
         param1["reflect_horizontal_resize_to_parent"] = const_444;
         param1["reflect_vertical_resize_to_parent"] = WINDOW_PARAM_REFLECT_VERTICAL_RESIZE_TO_PARENT;
         param1["reflect_resize_to_parent"] = const_258;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  if(param1[_loc3_] != 0)
                  {
                     Logger.log("Conflictiong flags in window params: \"" + _loc3_ + "\"!");
                  }
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
