package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_1071:SoundChannel = null;
      
      private var var_889:Boolean;
      
      private var var_1072:Sound = null;
      
      private var var_793:Number;
      
      public function HabboSound(param1:Sound)
      {
         super();
         var_1072 = param1;
         var_1072.addEventListener(Event.COMPLETE,onComplete);
         var_793 = 1;
         var_889 = false;
      }
      
      public function get finished() : Boolean
      {
         return !var_889;
      }
      
      public function stop() : Boolean
      {
         var_1071.stop();
         return true;
      }
      
      public function play() : Boolean
      {
         var_889 = false;
         var_1071 = var_1072.play(0);
         this.volume = var_793;
         return true;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get volume() : Number
      {
         return var_793;
      }
      
      public function get ready() : Boolean
      {
         return true;
      }
      
      public function get position() : Number
      {
         return var_1071.position;
      }
      
      public function get length() : Number
      {
         return var_1072.length;
      }
      
      public function set volume(param1:Number) : void
      {
         var_793 = param1;
         if(var_1071 != null)
         {
            var_1071.soundTransform = new SoundTransform(var_793);
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var_889 = true;
      }
   }
}
