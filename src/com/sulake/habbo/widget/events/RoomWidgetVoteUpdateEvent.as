package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_123:String = "RWPUE_VOTE_RESULT";
      
      public static const const_133:String = "RWPUE_VOTE_QUESTION";
       
      
      private var var_1434:int;
      
      private var var_1133:String;
      
      private var var_752:Array;
      
      private var var_1175:Array;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_1133 = param2;
         var_1175 = param3;
         var_752 = param4;
         if(var_752 == null)
         {
            var_752 = [];
         }
         var_1434 = param5;
      }
      
      public function get votes() : Array
      {
         return var_752.slice();
      }
      
      public function get totalVotes() : int
      {
         return var_1434;
      }
      
      public function get question() : String
      {
         return var_1133;
      }
      
      public function get choices() : Array
      {
         return var_1175.slice();
      }
   }
}
