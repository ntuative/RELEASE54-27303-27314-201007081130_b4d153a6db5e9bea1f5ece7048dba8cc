package com.sulake.habbo.avatar.geometry
{
   public class Vector3D
   {
       
      
      private var var_1074:Number;
      
      private var var_91:Number;
      
      private var _y:Number;
      
      private var var_90:Number;
      
      public function Vector3D(param1:Number = 0, param2:Number = 0, param3:Number = 0, param4:Number = 1)
      {
         super();
         var_91 = param1;
         _y = param2;
         var_90 = param3;
         var_1074 = param4;
      }
      
      public static function cross(param1:Vector3D, param2:Vector3D) : Vector3D
      {
         var _loc3_:Vector3D = new Vector3D();
         _loc3_.x = param1.y * param2.z - param1.z * param2.y;
         _loc3_.y = param1.z * param2.x - param1.x * param2.z;
         _loc3_.z = param1.x * param2.y - param1.y * param2.x;
         return _loc3_;
      }
      
      public static function dot(param1:Vector3D, param2:Vector3D) : Number
      {
         return param1.x * param2.x + param1.y * param2.y + param1.z * param2.z;
      }
      
      public static function subtract(param1:Vector3D, param2:Vector3D) : Vector3D
      {
         return new Vector3D(param1.x - param2.x,param1.y - param2.y,param1.z - param2.z,1);
      }
      
      public function cross(param1:Vector3D) : Vector3D
      {
         var _loc2_:Vector3D = new Vector3D();
         _loc2_.x = _y * param1.z - var_90 * param1.y;
         _loc2_.y = var_90 * param1.x - var_91 * param1.z;
         _loc2_.z = var_91 * param1.y - _y * param1.x;
         return _loc2_;
      }
      
      public function add(param1:Vector3D) : void
      {
         var_91 += param1.x;
         _y += param1.y;
         var_90 += param1.z;
      }
      
      public function subtract(param1:Vector3D) : void
      {
         var_91 -= param1.x;
         _y -= param1.y;
         var_90 -= param1.z;
      }
      
      public function length() : Number
      {
         return Math.sqrt(var_91 * var_91 + _y * _y + var_90 * var_90);
      }
      
      public function set z(param1:Number) : void
      {
         var_90 = param1;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function dot(param1:Vector3D) : Number
      {
         return var_91 * param1.x + _y * param1.y + var_90 * param1.z;
      }
      
      public function set y(param1:Number) : void
      {
         _y = param1;
      }
      
      public function toString() : String
      {
         return "Vector3D: (" + var_91 + "," + _y + "," + var_90 + "," + var_1074 + ")";
      }
      
      public function normalize() : void
      {
         var _loc1_:Number = 1 / this.length();
         var_91 *= _loc1_;
         _y *= _loc1_;
         var_90 *= _loc1_;
      }
      
      public function set w(param1:Number) : void
      {
         var_1074 = param1;
      }
      
      public function get w() : Number
      {
         return var_1074;
      }
      
      public function get z() : Number
      {
         return var_90;
      }
      
      public function set x(param1:Number) : void
      {
         var_91 = param1;
      }
      
      public function get x() : Number
      {
         return var_91;
      }
   }
}
