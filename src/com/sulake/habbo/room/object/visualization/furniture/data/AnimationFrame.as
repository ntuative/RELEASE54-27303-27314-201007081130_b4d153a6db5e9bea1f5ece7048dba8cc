package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class AnimationFrame
   {
      
      public static const const_717:int = -1;
      
      public static const const_959:int = -1;
       
      
      private var _y:int = 0;
      
      private var var_1914:int = -1;
      
      private var var_91:int = 0;
      
      private var var_1291:int = 1;
      
      private var var_890:int = 1;
      
      private var var_1912:Boolean = false;
      
      private var var_1913:int = 0;
      
      private var _id:int = 0;
      
      public function AnimationFrame(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:int = -1, param7:int = 0)
      {
         super();
         _id = param1;
         var_91 = param2;
         _y = param3;
         var_1912 = param5;
         if(param4 < 0)
         {
            param4 = const_717;
         }
         var_890 = param4;
         var_1291 = param4;
         if(param6 >= 0)
         {
            var_1914 = param6;
            var_1913 = param7;
         }
      }
      
      public function get y() : int
      {
         return _y;
      }
      
      public function set remainingFrameRepeats(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(var_890 > 0 && param1 > var_890)
         {
            param1 = var_890;
         }
         var_1291 = param1;
      }
      
      public function get frameRepeats() : int
      {
         return var_890;
      }
      
      public function get activeSequenceOffset() : int
      {
         return var_1913;
      }
      
      public function get id() : int
      {
         if(_id >= 0)
         {
            return _id;
         }
         return -_id * Math.random();
      }
      
      public function get remainingFrameRepeats() : int
      {
         if(var_890 < 0)
         {
            return const_717;
         }
         return var_1291;
      }
      
      public function get activeSequence() : int
      {
         return var_1914;
      }
      
      public function get isLastFrame() : Boolean
      {
         return var_1912;
      }
      
      public function get x() : int
      {
         return var_91;
      }
   }
}
