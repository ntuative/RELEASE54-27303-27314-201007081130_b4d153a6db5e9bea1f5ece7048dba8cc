package com.sulake.habbo.avatar.geometry
{
   public class Node3D
   {
       
      
      private var var_1407:Vector3D;
      
      private var var_674:Vector3D;
      
      public function Node3D(param1:Number, param2:Number, param3:Number)
      {
         var_1407 = new Vector3D();
         super();
         var_674 = new Vector3D(param1,param2,param3);
      }
      
      public function get transformedLocation() : Vector3D
      {
         return var_1407;
      }
      
      public function get location() : Vector3D
      {
         return var_674;
      }
      
      public function applyTransform(param1:Matrix4x4) : void
      {
         var_1407 = param1.vectorMultiplication(var_674);
      }
   }
}
