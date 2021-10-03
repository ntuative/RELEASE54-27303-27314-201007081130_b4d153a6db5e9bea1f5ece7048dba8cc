package com.sulake.habbo.avatar
{
   import com.sulake.habbo.avatar.actions.IActionDefinition;
   import com.sulake.habbo.avatar.structure.figure.IPartColor;
   import flash.geom.ColorTransform;
   
   public class AvatarImagePartContainer
   {
       
      
      private var _frames:Array;
      
      private var var_2163:int;
      
      private var var_2164:String;
      
      private var var_1692:IActionDefinition;
      
      private var var_2161:Boolean;
      
      private var _color:IPartColor;
      
      private var var_2166:String;
      
      private var var_2160:String;
      
      private var var_2134:Boolean;
      
      private var var_2162:ColorTransform;
      
      private var var_2165:int;
      
      public function AvatarImagePartContainer(param1:String, param2:String, param3:int, param4:IPartColor, param5:Array, param6:IActionDefinition, param7:Boolean, param8:int, param9:String = "", param10:Boolean = false, param11:Number = 1)
      {
         super();
         var_2164 = param1;
         var_2166 = param2;
         var_2163 = param3;
         _color = param4;
         _frames = param5;
         var_1692 = param6;
         var_2134 = param7;
         var_2165 = param8;
         var_2160 = param9;
         var_2161 = param10;
         var_2162 = new ColorTransform(1,1,1,param11);
      }
      
      public function get isColorable() : Boolean
      {
         return var_2134;
      }
      
      public function get partType() : String
      {
         return var_2166;
      }
      
      public function getFrameIndex(param1:int) : int
      {
         return 0;
      }
      
      public function get paletteMapId() : int
      {
         return var_2165;
      }
      
      public function get isBlendable() : Boolean
      {
         return var_2161;
      }
      
      public function get color() : IPartColor
      {
         return _color;
      }
      
      public function get partId() : int
      {
         return var_2163;
      }
      
      public function get flippedPartType() : String
      {
         return var_2160;
      }
      
      public function get bodyPartId() : String
      {
         return var_2164;
      }
      
      public function get action() : IActionDefinition
      {
         return var_1692;
      }
      
      public function get blendTransform() : ColorTransform
      {
         return var_2162;
      }
   }
}
