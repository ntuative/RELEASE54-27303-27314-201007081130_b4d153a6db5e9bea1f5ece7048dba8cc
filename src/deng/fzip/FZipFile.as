package deng.fzip
{
   import deng.utils.ChecksumUtil;
   import flash.events.EventDispatcher;
   import flash.utils.*;
   
   public class FZipFile
   {
      
      public static const const_715:int = 8;
      
      public static const const_1643:int = 10;
      
      public static const const_1257:int = 6;
      
      private static var var_1093:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").hasComplexContent();
      
      public static const const_1275:int = 0;
      
      public static const const_1548:int = 1;
      
      public static const const_1671:int = 2;
      
      public static const const_1571:int = 3;
      
      public static const const_1622:int = 4;
      
      public static const const_1640:int = 5;
      
      public static const const_1523:int = 9;
      
      public static const const_1630:int = 7;
       
      
      private var var_181:uint = 0;
      
      private var var_1094:uint = 0;
      
      private var var_739:Date;
      
      private var var_2000:int = -1;
      
      private var var_100:Function;
      
      private var var_516:Boolean = false;
      
      private var var_68:EventDispatcher;
      
      private var var_2469:int = -1;
      
      private var var_1331:uint = 0;
      
      private var var_2001:String = "";
      
      private var _extraFields:Dictionary;
      
      private var var_917:uint;
      
      private var var_22:ByteArray;
      
      private var var_738:uint;
      
      private var var_1594:Boolean = false;
      
      private var var_2470:int = -1;
      
      private var var_1593:String = "2.0";
      
      private var var_182:Boolean = false;
      
      private var var_2002:Boolean = false;
      
      private var var_369:String;
      
      private var var_632:uint = 0;
      
      private var var_1332:int = 0;
      
      private var var_429:String = "";
      
      private var var_737:int = 8;
      
      private var var_1595:Boolean = false;
      
      public function FZipFile(param1:EventDispatcher, param2:String = "utf-8")
      {
         var_100 = parseFileHead;
         super();
         var_369 = param2;
         var_68 = param1;
         _extraFields = new Dictionary();
         var_22 = new ByteArray();
         var_22.endian = Endian.BIG_ENDIAN;
      }
      
      public function get sizeUncompressed() : uint
      {
         return var_632;
      }
      
      public function set filename(param1:String) : void
      {
         var_429 = param1;
      }
      
      protected function uncompress() : void
      {
         if(var_182 && false)
         {
            var_22.position = 0;
            if(var_1093)
            {
               var_22.uncompress.apply(var_22,["deflate"]);
            }
            else
            {
               var_22.uncompress();
            }
            var_22.position = 0;
            var_182 = false;
         }
      }
      
      public function get filename() : String
      {
         return var_429;
      }
      
      public function get date() : Date
      {
         return var_739;
      }
      
      function parse(param1:IDataInput) : Boolean
      {
         while(param1.bytesAvailable && var_100(param1))
         {
         }
         return var_100 === parseFileIdle;
      }
      
      private function parseFileContent(param1:IDataInput) : Boolean
      {
         if(var_1595)
         {
            var_100 = parseFileIdle;
            var_68.dispatchEvent(new FZipErrorEvent(FZipErrorEvent.const_132,"Data descriptors are not supported."));
            return false;
         }
         if(var_181 == 0)
         {
            var_100 = parseFileIdle;
         }
         else
         {
            if(param1.bytesAvailable < var_181)
            {
               return false;
            }
            parseContent(param1);
            var_100 = parseFileIdle;
         }
         return true;
      }
      
      public function get versionNumber() : String
      {
         return var_1593;
      }
      
      public function getContentAsString(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:* = null;
         if(var_182)
         {
            uncompress();
         }
         var_22.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = var_22.readUTFBytes(var_22.bytesAvailable);
         }
         else
         {
            _loc3_ = var_22.readMultiByte(var_22.bytesAvailable,param2);
         }
         var_22.position = 0;
         if(param1)
         {
            compress();
         }
         return _loc3_;
      }
      
      private function parseFileIdle(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function parseContent(param1:IDataInput) : void
      {
         var _loc2_:* = 0;
         if(var_737 === const_715 && !var_1594)
         {
            if(var_1093)
            {
               param1.readBytes(var_22,0,var_181);
            }
            else
            {
               if(!var_516)
               {
                  var_68.dispatchEvent(new FZipErrorEvent(FZipErrorEvent.const_132,"Adler32 checksum not found."));
                  return;
               }
               var_22.writeByte(120);
               _loc2_ = uint(~var_2000 << 6 & 192);
               _loc2_ += 31 - (30720 | _loc2_) % 31;
               var_22.writeByte(_loc2_);
               param1.readBytes(var_22,2,var_181);
               var_22.position = var_22.length;
               var_22.writeUnsignedInt(var_917);
            }
            var_182 = true;
         }
         else
         {
            if(var_737 != const_1275)
            {
               var_68.dispatchEvent(new FZipErrorEvent(FZipErrorEvent.const_132,"Compression method " + var_737 + " is not supported."));
               return;
            }
            param1.readBytes(var_22,0,var_181);
            var_182 = false;
         }
         var_22.position = 0;
      }
      
      private function parseFileHead(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            parseHead(param1);
            if(var_1094 + var_1331 > 0)
            {
               var_100 = parseFileHeadExt;
            }
            else
            {
               var_100 = parseFileContent;
            }
            return true;
         }
         return false;
      }
      
      public function setContentAsString(param1:String, param2:String = "utf-8") : void
      {
         var_22.length = 0;
         var_22.position = 0;
         var_182 = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               var_22.writeUTFBytes(param1);
            }
            else
            {
               var_22.writeMultiByte(param1,param2);
            }
            var_738 = ChecksumUtil.CRC32(var_22);
            var_516 = false;
         }
         compress();
      }
      
      public function set date(param1:Date) : void
      {
         var_739 = param1 != null ? param1 : new Date();
      }
      
      public function serialize(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
      {
         var _loc10_:* = null;
         var _loc15_:* = null;
         var _loc16_:Boolean = false;
         if(param1 == null)
         {
            return 0;
         }
         if(param3)
         {
            param1.writeUnsignedInt(33639248);
            param1.writeShort(var_1332 << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(67324752);
         }
         param1.writeShort(var_1332 << 8 | 20);
         param1.writeShort(var_369 == "utf-8" ? 2048 : 0);
         param1.writeShort(const_715);
         var _loc5_:Date = var_739 != null ? var_739 : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(var_738);
         param1.writeUnsignedInt(var_181);
         param1.writeUnsignedInt(var_632);
         var _loc8_:ByteArray = new ByteArray();
         _loc8_.endian = Endian.LITTLE_ENDIAN;
         if(var_369 == "utf-8")
         {
            _loc8_.writeUTFBytes(var_429);
         }
         else
         {
            _loc8_.writeMultiByte(var_429,var_369);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in _extraFields)
         {
            _loc15_ = _extraFields[_loc10_] as ByteArray;
            if(_loc15_ != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!var_516)
            {
               _loc16_ = var_182;
               if(_loc16_)
               {
                  uncompress();
               }
               var_917 = ChecksumUtil.Adler32(var_22,0,var_22.length);
               var_516 = true;
               if(_loc16_)
               {
                  compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(var_917);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && false)
         {
            if(var_369 == "utf-8")
            {
               _loc8_.writeUTFBytes(var_2001);
            }
            else
            {
               _loc8_.writeMultiByte(var_2001,var_369);
            }
         }
         var _loc12_:uint = _loc8_.position - _loc9_ - _loc11_;
         param1.writeShort(_loc9_);
         param1.writeShort(_loc11_);
         if(param3)
         {
            param1.writeShort(_loc12_);
            param1.writeShort(0);
            param1.writeShort(0);
            param1.writeUnsignedInt(0);
            param1.writeUnsignedInt(param4);
         }
         if(_loc9_ + _loc11_ + _loc12_ > 0)
         {
            param1.writeBytes(_loc8_);
         }
         var _loc13_:int = 0;
         if(!param3 && var_181 > 0)
         {
            if(var_1093)
            {
               _loc13_ = 0;
               param1.writeBytes(var_22,0,_loc13_);
            }
            else
            {
               _loc13_ = 4294967290;
               param1.writeBytes(var_22,2,_loc13_);
            }
         }
         var _loc14_:uint = 30 + _loc9_ + _loc11_ + _loc12_ + _loc13_;
         if(param3)
         {
            _loc14_ += 16;
         }
         return _loc14_;
      }
      
      public function get sizeCompressed() : uint
      {
         return var_181;
      }
      
      protected function compress() : void
      {
         if(!var_182)
         {
            if(false)
            {
               var_22.position = 0;
               var_632 = var_22.length;
               if(var_1093)
               {
                  var_22.compress.apply(var_22,["deflate"]);
                  var_181 = var_22.length;
               }
               else
               {
                  var_22.compress();
                  var_181 = -6;
               }
               var_22.position = 0;
               var_182 = true;
            }
            else
            {
               var_181 = 0;
               var_632 = 0;
            }
         }
      }
      
      private function parseFileHeadExt(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= var_1094 + var_1331)
         {
            parseHeadExt(param1);
            var_100 = parseFileContent;
            return true;
         }
         return false;
      }
      
      protected function parseHeadExt(param1:IDataInput) : void
      {
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = null;
         if(var_369 == "utf-8")
         {
            var_429 = param1.readUTFBytes(var_1094);
         }
         else
         {
            var_429 = param1.readMultiByte(var_1094,var_369);
         }
         var _loc2_:uint = var_1331;
         while(_loc2_ > 4)
         {
            _loc3_ = uint(param1.readUnsignedShort());
            _loc4_ = uint(param1.readUnsignedShort());
            if(_loc4_ > _loc2_)
            {
               var_68.dispatchEvent(new FZipErrorEvent(FZipErrorEvent.const_132,"Parse error in file " + var_429 + ": Extra field data size too big."));
               return;
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               var_917 = param1.readUnsignedInt();
               var_516 = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               _extraFields[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      protected function parseHead(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         var_1332 = _loc2_ >> 8;
         var_1593 = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         var_737 = param1.readUnsignedShort();
         var_1594 = (_loc3_ & 1) !== 0;
         var_1595 = (_loc3_ & 8) !== 0;
         var_2002 = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            var_369 = "utf-8";
         }
         if(var_737 === const_1257)
         {
            var_2470 = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            var_2469 = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(var_737 === const_715)
         {
            var_2000 = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         var_739 = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         var_738 = param1.readUnsignedInt();
         var_181 = param1.readUnsignedInt();
         var_632 = param1.readUnsignedInt();
         var_1094 = param1.readUnsignedShort();
         var_1331 = param1.readUnsignedShort();
      }
      
      public function set content(param1:ByteArray) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(var_22,0,param1.length);
            var_738 = ChecksumUtil.CRC32(var_22);
            var_516 = false;
         }
         else
         {
            var_22.length = 0;
            var_22.position = 0;
            var_182 = false;
         }
         compress();
      }
      
      public function toString() : String
      {
         return "[FZipFile]\n  name:" + var_429 + "\n  date:" + var_739 + "\n  sizeCompressed:" + var_181 + "\n  sizeUncompressed:" + var_632 + "\n  versionHost:" + var_1332 + "\n  versionNumber:" + var_1593 + "\n  compressionMethod:" + var_737 + "\n  encrypted:" + var_1594 + "\n  hasDataDescriptor:" + var_1595 + "\n  hasCompressedPatchedData:" + var_2002 + "\n  filenameEncoding:" + var_369 + "\n  crc32:" + var_738.toString(16) + "\n  adler32:" + var_917.toString(16);
      }
      
      public function get content() : ByteArray
      {
         if(var_182)
         {
            uncompress();
         }
         return var_22;
      }
   }
}
