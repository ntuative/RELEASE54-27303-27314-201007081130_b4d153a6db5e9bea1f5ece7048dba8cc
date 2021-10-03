package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1456:BigInteger;
      
      private var var_678:BigInteger;
      
      private var var_1709:BigInteger;
      
      private var var_1710:BigInteger;
      
      private var var_2356:BigInteger;
      
      private var var_2350:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         var_1456 = param1;
         var_1709 = param2;
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return var_2356.toRadix(param1);
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         var_1710 = new BigInteger();
         var_1710.fromRadix(param1,param2);
         var_2356 = var_1710.modPow(var_678,var_1456);
         return getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return var_2350.toRadix(param1);
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + var_1456.toString() + ",generator: " + var_1709.toString() + ",secret: " + param1);
         var_678 = new BigInteger();
         var_678.fromRadix(param1,param2);
         var_2350 = var_1709.modPow(var_678,var_1456);
         return true;
      }
   }
}
