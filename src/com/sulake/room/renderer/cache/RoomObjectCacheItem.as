package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_674:RoomObjectLocationCacheItem = null;
      
      private var var_185:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         var_674 = new RoomObjectLocationCacheItem(param1);
         var_185 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return var_674;
      }
      
      public function dispose() : void
      {
         if(var_674 != null)
         {
            var_674.dispose();
            var_674 = null;
         }
         if(var_185 != null)
         {
            var_185.dispose();
            var_185 = null;
         }
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return var_185;
      }
   }
}
