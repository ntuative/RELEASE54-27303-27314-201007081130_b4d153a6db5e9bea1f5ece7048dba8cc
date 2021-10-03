package com.sulake.core.window.utils
{
   import com.sulake.core.utils.Map;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   
   public class PropertyStruct
   {
      
      public static const const_563:String = "Rectangle";
      
      public static const const_55:String = "Boolean";
      
      public static const const_732:String = "Number";
      
      public static const const_59:String = "int";
      
      public static const STRING:String = "String";
      
      public static const const_579:String = "Point";
      
      public static const const_1004:String = "Array";
      
      public static const const_1027:String = "uint";
      
      public static const const_420:String = "hex";
      
      public static const const_1025:String = "Map";
       
      
      private var var_680:String;
      
      private var var_190:Object;
      
      private var var_2491:Boolean;
      
      private var _type:String;
      
      private var var_2313:Boolean;
      
      public function PropertyStruct(param1:String, param2:Object, param3:String, param4:Boolean)
      {
         super();
         var_680 = param1;
         var_190 = param2;
         _type = param3;
         var_2313 = param4;
         var_2491 = param3 == const_1025 || param3 == const_1004 || param3 == const_579 || param3 == const_563;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function toString() : String
      {
         switch(_type)
         {
            case const_420:
               return "0x" + uint(var_190).toString(16);
            case const_55:
               return Boolean(var_190) == true ? "HabboFriendListCom_arrow_right_black_png" : "false";
            case const_579:
               return "Point(" + Point(var_190).x + ", " + Point(var_190).y + ")";
            case const_563:
               return "Rectangle(" + Rectangle(var_190).x + ", " + Rectangle(var_190).y + ", " + Rectangle(var_190).width + ", " + Rectangle(var_190).height + ")";
            default:
               return String(value);
         }
      }
      
      public function toXMLString() : String
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         switch(_type)
         {
            case const_1025:
               _loc3_ = var_190 as Map;
               _loc1_ = "<var key=\"" + var_680 + "\">\r<value>\r<" + _type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc3_.length)
               {
                  _loc1_ += "<var key=\"" + _loc3_.getKey(_loc2_) + "\" value=\"" + _loc3_.getWithIndex(_loc2_) + "\" type=\"" + getQualifiedClassName(_loc3_.getWithIndex(_loc2_)) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_1004:
               _loc4_ = var_190 as Array;
               _loc1_ = "<var key=\"" + var_680 + "\">\r<value>\r<" + _type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc4_.length)
               {
                  _loc1_ += "<var key=\"" + String(_loc2_) + "\" value=\"" + _loc4_[_loc2_] + "\" type=\"" + getQualifiedClassName(_loc4_[_loc2_]) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_579:
               _loc5_ = var_190 as Point;
               _loc1_ = "<var key=\"" + var_680 + "\">\r<value>\r<" + _type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc5_.x + "\" type=\"" + const_59 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc5_.y + "\" type=\"" + const_59 + "\" />\r";
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_563:
               _loc6_ = var_190 as Rectangle;
               _loc1_ = "<var key=\"" + var_680 + "\">\r<value>\r<" + _type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc6_.x + "\" type=\"" + const_59 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc6_.y + "\" type=\"" + const_59 + "\" />\r";
               _loc1_ += "<var key=\"width\" value=\"" + _loc6_.width + "\" type=\"" + const_59 + "\" />\r";
               _loc1_ += "<var key=\"height\" value=\"" + _loc6_.height + "\" type=\"" + const_59 + "\" />\r";
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_420:
               _loc1_ = "<var key=\"" + var_680 + "\" value=\"" + "0x" + uint(var_190).toString(16) + "\" type=\"" + _type + "\" />";
               break;
            default:
               _loc1_ = "<var key=\"" + var_680 + "\" value=\"" + var_190 + "\" type=\"" + _type + "\" />";
         }
         return _loc1_;
      }
      
      public function get value() : Object
      {
         return var_190;
      }
      
      public function get valid() : Boolean
      {
         return var_2313;
      }
      
      public function get key() : String
      {
         return var_680;
      }
   }
}
