package com.sulake.core.window
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.utils.IRectLimiter;
   import com.sulake.core.window.utils.WindowRectLimits;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class WindowModel implements IDisposable
   {
       
      
      protected var _disposed:Boolean = false;
      
      protected var var_398:Rectangle;
      
      protected var _param:uint;
      
      protected var var_155:Rectangle;
      
      protected var _type:uint;
      
      protected var var_1205:Boolean = true;
      
      protected var var_154:Rectangle;
      
      protected var var_591:uint = 16777215;
      
      protected var var_38:uint;
      
      protected var var_590:uint = 10;
      
      protected var var_83:uint;
      
      protected var var_356:Boolean = true;
      
      protected var var_347:String = "";
      
      protected var var_78:WindowRectLimits;
      
      protected var var_1493:uint;
      
      protected var var_694:Boolean = false;
      
      protected var var_403:Number = 1.0;
      
      protected var var_58:Rectangle;
      
      protected var _id:uint;
      
      protected var _name:String;
      
      protected var var_11:Rectangle;
      
      protected var _context:WindowContext;
      
      protected var var_693:Array;
      
      public function WindowModel(param1:uint, param2:String, param3:uint, param4:uint, param5:uint, param6:WindowContext, param7:Rectangle, param8:Array = null)
      {
         super();
         _id = param1;
         _name = param2;
         _type = param3;
         _param = param5;
         var_38 = WindowState.const_83;
         var_83 = param4;
         var_693 = param8 == null ? new Array() : param8;
         _context = param6;
         var_11 = param7.clone();
         var_398 = param7.clone();
         var_58 = param7.clone();
         var_154 = new Rectangle();
         var_155 = null;
         var_78 = new WindowRectLimits(this as IWindow);
      }
      
      public function getMinHeight() : int
      {
         return var_78.minHeight;
      }
      
      public function testTypeFlag(param1:uint, param2:uint = 0) : Boolean
      {
         if(param2 > 0)
         {
            return (_type & param2 ^ param1) == 0;
         }
         return (_type & param1) == param1;
      }
      
      public function getMinWidth() : int
      {
         return var_78.minWidth;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get param() : uint
      {
         return _param;
      }
      
      public function get state() : uint
      {
         return var_38;
      }
      
      public function getMaximizedWidth() : int
      {
         return var_155.width;
      }
      
      public function getMinimizedHeight() : int
      {
         return var_154.height;
      }
      
      public function get limits() : IRectLimiter
      {
         return var_78;
      }
      
      public function get tags() : Array
      {
         return var_693;
      }
      
      public function get id() : uint
      {
         return _id;
      }
      
      public function testStateFlag(param1:uint, param2:uint = 0) : Boolean
      {
         if(param2 > 0)
         {
            return (var_38 & param2 ^ param1) == 0;
         }
         return (var_38 & param1) == param1;
      }
      
      public function dispose() : void
      {
         if(!_disposed)
         {
            _disposed = true;
            var_11 = null;
            var_38 = WindowState.const_395;
            var_693 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get height() : int
      {
         return var_11.height;
      }
      
      public function get position() : Point
      {
         return var_11.topLeft;
      }
      
      public function get background() : Boolean
      {
         return var_694;
      }
      
      public function get context() : IWindowContext
      {
         return _context;
      }
      
      public function get mouseTreshold() : uint
      {
         return var_590;
      }
      
      public function get style() : uint
      {
         return var_83;
      }
      
      public function invalidate(param1:Rectangle = null) : void
      {
      }
      
      public function testParamFlag(param1:uint, param2:uint = 0) : Boolean
      {
         if(param2 > 0)
         {
            return (_param & param2 ^ param1) == 0;
         }
         return (_param & param1) == param1;
      }
      
      public function testStyleFlag(param1:uint, param2:uint = 0) : Boolean
      {
         if(param2 > 0)
         {
            return (var_83 & param2 ^ param1) == 0;
         }
         return (var_83 & param1) == param1;
      }
      
      public function getMaxWidth() : int
      {
         return var_78.maxWidth;
      }
      
      public function hasMaxHeight() : Boolean
      {
         return false;
      }
      
      public function get type() : uint
      {
         return _type;
      }
      
      public function get clipping() : Boolean
      {
         return var_1205;
      }
      
      public function setMinWidth(param1:int) : int
      {
         var _loc2_:int = 0;
         var_78.minWidth = param1;
         return _loc2_;
      }
      
      public function get width() : int
      {
         return var_11.width;
      }
      
      public function hasMinHeight() : Boolean
      {
         return false;
      }
      
      public function get blend() : Number
      {
         return var_403;
      }
      
      public function getInitialHeight() : int
      {
         return var_398.height;
      }
      
      public function getMinimizedWidth() : int
      {
         return var_154.width;
      }
      
      public function setMinHeight(param1:int) : int
      {
         var _loc2_:int = 0;
         var_78.minHeight = param1;
         return _loc2_;
      }
      
      public function getInitialWidth() : int
      {
         return var_398.width;
      }
      
      public function getPreviousWidth() : int
      {
         return var_58.width;
      }
      
      public function hasMinWidth() : Boolean
      {
         return false;
      }
      
      public function get color() : uint
      {
         return var_591;
      }
      
      public function setMaxHeight(param1:int) : int
      {
         var _loc2_:int = 0;
         var_78.maxHeight = param1;
         return _loc2_;
      }
      
      public function get caption() : String
      {
         return var_347;
      }
      
      public function get rectangle() : Rectangle
      {
         return var_11;
      }
      
      public function setMaxWidth(param1:int) : int
      {
         var _loc2_:int = 0;
         var_78.maxWidth = param1;
         return _loc2_;
      }
      
      public function get visible() : Boolean
      {
         return var_356;
      }
      
      public function getMaxHeight() : int
      {
         return var_78.maxHeight;
      }
      
      public function get x() : int
      {
         return var_11.x;
      }
      
      public function get y() : int
      {
         return var_11.y;
      }
      
      public function getPreviousHeight() : int
      {
         return var_58.height;
      }
      
      public function hasMaxWidth() : Boolean
      {
         return false;
      }
      
      public function getMaximizedHeight() : int
      {
         return var_155.height;
      }
   }
}
