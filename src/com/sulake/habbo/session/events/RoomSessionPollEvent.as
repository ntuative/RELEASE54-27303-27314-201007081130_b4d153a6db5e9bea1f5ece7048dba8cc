package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionPollEvent extends RoomSessionEvent
   {
      
      public static const const_124:String = "RSPE_POLL_CONTENT";
      
      public static const const_128:String = "RSPE_POLL_OFFER";
      
      public static const const_64:String = "RSPE_POLL_ERROR";
       
      
      private var var_1034:Array = null;
      
      private var var_1221:String = "";
      
      private var var_1222:String;
      
      private var var_1220:String = "";
      
      private var var_1035:int = 0;
      
      private var _id:int = -1;
      
      public function RoomSessionPollEvent(param1:String, param2:IRoomSession, param3:int)
      {
         _id = param3;
         super(param1,param2);
      }
      
      public function get questionArray() : Array
      {
         return var_1034;
      }
      
      public function get startMessage() : String
      {
         return var_1221;
      }
      
      public function get summary() : String
      {
         return var_1222;
      }
      
      public function set startMessage(param1:String) : void
      {
         var_1221 = param1;
      }
      
      public function set numQuestions(param1:int) : void
      {
         var_1035 = param1;
      }
      
      public function set summary(param1:String) : void
      {
         var_1222 = param1;
      }
      
      public function get numQuestions() : int
      {
         return var_1035;
      }
      
      public function set endMessage(param1:String) : void
      {
         var_1220 = param1;
      }
      
      public function get endMessage() : String
      {
         return var_1220;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set questionArray(param1:Array) : void
      {
         var_1034 = param1;
      }
   }
}
