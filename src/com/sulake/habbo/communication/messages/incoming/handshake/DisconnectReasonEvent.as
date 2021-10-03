package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1510:int = 5;
      
      public static const const_1579:int = 113;
      
      public static const const_1551:int = 29;
      
      public static const const_1667:int = 0;
      
      public static const const_1713:int = 102;
      
      public static const const_1723:int = 25;
      
      public static const const_1638:int = 20;
      
      public static const const_1613:int = 116;
      
      public static const const_1563:int = 114;
      
      public static const const_1608:int = 101;
      
      public static const const_1700:int = 108;
      
      public static const const_1499:int = 112;
      
      public static const const_1678:int = 100;
      
      public static const const_1710:int = 24;
      
      public static const const_1344:int = 10;
      
      public static const const_1655:int = 111;
      
      public static const const_1586:int = 23;
      
      public static const const_1724:int = 26;
      
      public static const const_1287:int = 2;
      
      public static const const_1559:int = 22;
      
      public static const const_1676:int = 17;
      
      public static const const_1505:int = 18;
      
      public static const const_1565:int = 3;
      
      public static const const_1590:int = 109;
      
      public static const const_1297:int = 1;
      
      public static const const_1582:int = 103;
      
      public static const const_1715:int = 11;
      
      public static const const_1536:int = 28;
      
      public static const const_1534:int = 104;
      
      public static const const_1621:int = 13;
      
      public static const const_1717:int = 107;
      
      public static const const_1519:int = 27;
      
      public static const const_1668:int = 118;
      
      public static const const_1647:int = 115;
      
      public static const const_1606:int = 16;
      
      public static const const_1516:int = 19;
      
      public static const const_1580:int = 4;
      
      public static const const_1508:int = 105;
      
      public static const const_1636:int = 117;
      
      public static const const_1498:int = 119;
      
      public static const const_1546:int = 106;
      
      public static const const_1600:int = 12;
      
      public static const const_1524:int = 110;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(reason)
         {
            case const_1297:
            case const_1344:
               return "banned";
            case const_1287:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
