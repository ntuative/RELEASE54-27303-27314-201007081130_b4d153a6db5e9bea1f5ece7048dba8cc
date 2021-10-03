package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_366:Number = 0.5;
      
      private static const const_792:int = 3;
      
      private static const const_1131:Number = 1;
       
      
      private var var_2023:Boolean = false;
      
      private var var_2031:Boolean = false;
      
      private var var_1098:int = 0;
      
      private var var_275:Vector3d = null;
      
      private var var_2027:int = 0;
      
      private var var_2025:int = 0;
      
      private var var_2030:Boolean = false;
      
      private var var_2022:int = -2;
      
      private var var_2026:Boolean = false;
      
      private var var_2024:int = 0;
      
      private var var_2029:int = -1;
      
      private var var_430:Vector3d = null;
      
      private var var_2028:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get roomWd() : int
      {
         return var_2027;
      }
      
      public function get targetId() : int
      {
         return var_2029;
      }
      
      public function set roomHt(param1:int) : void
      {
         var_2024 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         var_2027 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         var_2023 = param1;
      }
      
      public function set targetId(param1:int) : void
      {
         var_2029 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         var_2031 = param1;
      }
      
      public function dispose() : void
      {
         var_430 = null;
         var_275 = null;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(var_430 == null)
         {
            var_430 = new Vector3d();
         }
         var_430.assign(param1);
         var_1098 = 0;
      }
      
      public function get targetCategory() : int
      {
         return var_2022;
      }
      
      public function get screenHt() : int
      {
         return var_2028;
      }
      
      public function set screenWd(param1:int) : void
      {
         var_2025 = param1;
      }
      
      public function get location() : IVector3d
      {
         return var_275;
      }
      
      public function set screenHt(param1:int) : void
      {
         var_2028 = param1;
      }
      
      public function get roomHt() : int
      {
         return var_2024;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return var_2023;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return var_2031;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         if(var_430 != null && var_275 != null)
         {
            ++var_1098;
            _loc2_ = Vector3d.dif(var_430,var_275);
            if(_loc2_.length <= const_366)
            {
               var_275 = var_430;
               var_430 = null;
            }
            else
            {
               _loc2_.div(_loc2_.length);
               if(_loc2_.length < const_366 * (const_792 + 1))
               {
                  _loc2_.mul(const_366);
               }
               else if(var_1098 <= const_792)
               {
                  _loc2_.mul(const_366);
               }
               else
               {
                  _loc2_.mul(const_1131);
               }
               var_275 = Vector3d.sum(var_275,_loc2_);
            }
         }
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         var_2030 = param1;
      }
      
      public function get screenWd() : int
      {
         return var_2025;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         var_2026 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         var_2022 = param1;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(var_275 != null)
         {
            return;
         }
         var_275 = new Vector3d();
         var_275.assign(param1);
      }
      
      public function get centeredLocX() : Boolean
      {
         return var_2030;
      }
      
      public function get centeredLocY() : Boolean
      {
         return var_2026;
      }
   }
}
