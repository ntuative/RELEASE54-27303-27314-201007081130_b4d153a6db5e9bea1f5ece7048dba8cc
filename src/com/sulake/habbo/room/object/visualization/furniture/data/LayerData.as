package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_385:int = 255;
      
      public static const INK_DARKEN:int = 3;
      
      public static const const_388:int = 0;
      
      public static const const_997:int = 2;
      
      public static const const_950:int = 1;
      
      public static const const_588:Boolean = false;
      
      public static const const_675:String = "";
      
      public static const const_392:int = 0;
      
      public static const const_460:int = 0;
      
      public static const const_475:int = 0;
       
      
      private var var_2156:int = 0;
      
      private var var_1829:String = "";
      
      private var var_1698:int = 0;
      
      private var var_2158:int = 0;
      
      private var var_2157:Number = 0;
      
      private var var_1802:int = 255;
      
      private var var_2159:Boolean = false;
      
      public function LayerData()
      {
         super();
      }
      
      public function get yOffset() : int
      {
         return var_2156;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            tag = param1.tag;
            ink = param1.ink;
            alpha = param1.alpha;
            ignoreMouse = param1.ignoreMouse;
            xOffset = param1.xOffset;
            yOffset = param1.yOffset;
            zOffset = param1.zOffset;
         }
      }
      
      public function set ink(param1:int) : void
      {
         var_1698 = param1;
      }
      
      public function get zOffset() : Number
      {
         return var_2157;
      }
      
      public function set xOffset(param1:int) : void
      {
         var_2158 = param1;
      }
      
      public function set yOffset(param1:int) : void
      {
         var_2156 = param1;
      }
      
      public function get tag() : String
      {
         return var_1829;
      }
      
      public function get alpha() : int
      {
         return var_1802;
      }
      
      public function get ink() : int
      {
         return var_1698;
      }
      
      public function set zOffset(param1:Number) : void
      {
         var_2157 = param1;
      }
      
      public function get xOffset() : int
      {
         return var_2158;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         var_2159 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return var_2159;
      }
      
      public function set tag(param1:String) : void
      {
         var_1829 = param1;
      }
      
      public function set alpha(param1:int) : void
      {
         var_1802 = param1;
      }
   }
}
