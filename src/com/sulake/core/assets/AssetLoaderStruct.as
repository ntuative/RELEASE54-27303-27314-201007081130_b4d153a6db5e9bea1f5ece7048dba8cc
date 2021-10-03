package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_728:IAssetLoader;
      
      private var var_1448:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         var_1448 = param1;
         var_728 = param2;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return var_728;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(var_728 != null)
            {
               if(true)
               {
                  var_728.dispose();
                  var_728 = null;
               }
            }
            super.dispose();
         }
      }
      
      public function get assetName() : String
      {
         return var_1448;
      }
   }
}
