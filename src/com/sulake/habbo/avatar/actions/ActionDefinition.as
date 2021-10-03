package com.sulake.habbo.avatar.actions
{
   import com.sulake.core.utils.Map;
   import flash.utils.Dictionary;
   
   public class ActionDefinition implements IActionDefinition
   {
       
      
      private var var_1377:Array;
      
      private var var_2128:String;
      
      private var var_38:String;
      
      private var var_1949:Boolean = false;
      
      private var var_1639:Dictionary;
      
      private var var_2126:int;
      
      private var var_645:String;
      
      private var var_2125:Boolean = false;
      
      private var _id:String;
      
      private var var_2131:Boolean = false;
      
      private var var_614:Map;
      
      private var var_2127:String;
      
      private var var_2130:String = "";
      
      private var var_2129:String;
      
      private var _types:Dictionary;
      
      public function ActionDefinition(param1:XML)
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var_1377 = new Array();
         _types = new Dictionary();
         var_1639 = new Dictionary();
         super();
         _id = String(param1.@id);
         var_38 = String(param1.@state);
         var_2126 = parseInt(param1.@precedence);
         var_2128 = String(param1.@activepartset);
         var_2129 = String(param1.@assetpartdefinition);
         var_2127 = String(param1.@lay);
         var_645 = String(param1.@geometrytype);
         var_1949 = Boolean(parseInt(param1.@main));
         var_2125 = Boolean(parseInt(param1.@method_18));
         var_2131 = Boolean(parseInt(param1.@animation));
         var _loc2_:String = String(param1.@prevents);
         if(_loc2_ != "")
         {
            var_1377 = _loc2_.split(",");
         }
         for each(_loc3_ in param1.param)
         {
            _loc5_ = String(_loc3_.@id);
            _loc6_ = String(_loc3_.@value);
            if(_loc5_ == "default")
            {
               var_2130 = _loc6_;
            }
            else
            {
               var_1639[_loc5_] = _loc6_;
            }
         }
         for each(_loc4_ in param1.type)
         {
            _loc7_ = String(_loc4_.@id);
            _types[_loc7_] = new ActionType(_loc4_);
         }
      }
      
      public function setOffsets(param1:String, param2:int, param3:Array) : void
      {
         if(var_614 == null)
         {
            var_614 = new Map();
         }
         if(var_614.getValue(param1) == null)
         {
            var_614.add(param1,new Map());
         }
         var _loc4_:Map = var_614.getValue(param1);
         _loc4_.add(param2,param3);
      }
      
      public function get activePartSet() : String
      {
         return var_2128;
      }
      
      public function get precedence() : int
      {
         return var_2126;
      }
      
      public function get state() : String
      {
         return var_38;
      }
      
      public function getOffsets(param1:String, param2:int) : Array
      {
         if(var_614 == null)
         {
            return null;
         }
         var _loc3_:Map = var_614.getValue(param1) as Map;
         if(_loc3_ == null)
         {
            return null;
         }
         return _loc3_.getValue(param2) as Array;
      }
      
      public function get isAnimation() : Boolean
      {
         return var_2131;
      }
      
      public function get id() : String
      {
         return _id;
      }
      
      public function get isMain() : Boolean
      {
         return var_1949;
      }
      
      public function get assetPartDefinition() : String
      {
         return var_2129;
      }
      
      public function get isDefault() : Boolean
      {
         return var_2125;
      }
      
      public function get lay() : String
      {
         return var_2127;
      }
      
      public function getParameterValue(param1:String) : String
      {
         if(param1 == "")
         {
            return "";
         }
         var _loc2_:String = "null";
         if(_loc2_ == null)
         {
            _loc2_ = var_2130;
         }
         return _loc2_;
      }
      
      public function get geometryType() : String
      {
         return var_645;
      }
      
      public function getPrevents(param1:String = "") : Array
      {
         return var_1377.concat(getTypePrevents(param1));
      }
      
      private function getTypePrevents(param1:String) : Array
      {
         if(param1 == "")
         {
            return [];
         }
         var _loc2_:ActionType = _types[param1];
         if(_loc2_ != null)
         {
            return _loc2_.prevents;
         }
         return [];
      }
      
      public function toString() : String
      {
         return "[ActionDefinition]\nid:           " + id + "\n" + "state:        " + state + "\n" + "main:         " + isMain + "\n" + "default:      " + isDefault + "\n" + "geometry:     " + state + "\n" + "precedence:   " + precedence + "\n" + "activepartset:" + activePartSet + "\n" + "activepartdef:" + assetPartDefinition + "";
      }
   }
}
