package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_1048:int = 0;
      
      private var var_1211:int = 0;
      
      private var var_1736:String = "";
      
      private var var_1049:int = 0;
      
      private var var_1738:String = "";
      
      private var var_1742:int = 0;
      
      private var var_1524:String = "";
      
      private var var_1741:int = 0;
      
      private var var_1739:int = 0;
      
      private var var_1740:String = "";
      
      private var var_1737:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         var_1741 = param1;
         var_1740 = param2;
         var_1524 = param3;
         var_1736 = param4;
         var_1738 = param5;
         if(param6)
         {
            var_1211 = 1;
         }
         else
         {
            var_1211 = 0;
         }
         var_1742 = param7;
         var_1739 = param8;
         var_1049 = param9;
         var_1737 = param10;
         var_1048 = param11;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1741,var_1740,var_1524,var_1736,var_1738,var_1211,var_1742,var_1739,var_1049,var_1737,var_1048];
      }
      
      public function dispose() : void
      {
      }
   }
}
