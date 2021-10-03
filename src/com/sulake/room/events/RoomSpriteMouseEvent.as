package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var var_2008:Boolean = false;
      
      private var var_2004:Boolean = false;
      
      private var var_2005:String = "";
      
      private var _type:String = "";
      
      private var var_2007:Boolean = false;
      
      private var var_2009:Number = 0;
      
      private var var_2010:Number = 0;
      
      private var var_2012:Number = 0;
      
      private var var_2011:String = "";
      
      private var var_2003:Number = 0;
      
      private var var_2006:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:Number, param5:Number, param6:Number = 0, param7:Number = 0, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false)
      {
         super();
         _type = param1;
         var_2011 = param2;
         var_2005 = param3;
         var_2010 = param4;
         var_2012 = param5;
         var_2009 = param6;
         var_2003 = param7;
         var_2006 = param8;
         var_2004 = param9;
         var_2007 = param10;
         var_2008 = param11;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_2006;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_2008;
      }
      
      public function get localX() : Number
      {
         return var_2009;
      }
      
      public function get localY() : Number
      {
         return var_2003;
      }
      
      public function get canvasId() : String
      {
         return var_2011;
      }
      
      public function get altKey() : Boolean
      {
         return var_2004;
      }
      
      public function get spriteTag() : String
      {
         return var_2005;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get screenX() : Number
      {
         return var_2010;
      }
      
      public function get screenY() : Number
      {
         return var_2012;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_2007;
      }
   }
}
