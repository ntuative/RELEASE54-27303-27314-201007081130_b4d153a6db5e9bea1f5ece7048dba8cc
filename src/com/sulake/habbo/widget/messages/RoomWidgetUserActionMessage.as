package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_737:String = "RWUAM_RESPECT_USER";
      
      public static const const_544:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_725:String = "RWUAM_START_TRADING";
      
      public static const const_728:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_738:String = "RWUAM_WHISPER_USER";
      
      public static const const_630:String = "RWUAM_IGNORE_USER";
      
      public static const const_511:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_616:String = "RWUAM_BAN_USER";
      
      public static const const_546:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_464:String = "RWUAM_KICK_USER";
      
      public static const const_618:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_578:String = " RWUAM_RESPECT_PET";
      
      public static const const_397:String = "RWUAM_KICK_BOT";
      
      public static const const_1387:String = "RWUAM_TRAIN_PET";
      
      public static const const_536:String = "RWUAM_PICKUP_PET";
      
      public static const const_690:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_700:String = "RWUAM_REPORT";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         _userId = param2;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
   }
}
