package com.massiveProCreation.flipbook.sound
{
	// IMPORTS
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.media.Sound;
	import flash.media.SoundChannel;
	import flash.media.SoundTransform;
	import flash.net.URLRequest;

	public class SoundControl extends Sprite
	{
		// VARIABLES
		private var _soundName:String; 															// path to the sound file
		private var _autoPlay:String; 															// variable that specify whether the files starts to play automaticly
		private var _volume:Number; 															// volume variable
		private var _loop:String;
		
		private var _soundPlaying:Boolean = false; 												// boolen value, true - sound plays, false - sound is not playing
		private var _soundPosition:Number = 0; 													// the position of the sound
		
		private var _sound:Sound;									 							// sound object
		private var _soundChannel:SoundChannel = new SoundChannel(); 							// sound channel
		private var _soundTransform:SoundTransform; 				 							// sound transform
		
		public function SoundControl(soundName:String, soundVolume:Number, soundAutoPlay:String, loop:String)
		{
			_soundName = soundName; 															// assign arguments to the private variables
			_volume = soundVolume;
			_autoPlay = soundAutoPlay;
			_loop = loop;
			loadSound();
			super();																			// call of the parent class constructor
			
		}
		
		
		private function loadSound():void {
			_sound = new Sound();																// cerate new soud
			_sound.addEventListener(Event.COMPLETE, soundLoaded, false, 0 , true);				// add event listener COMPLETE (when sound is done playing)
			_sound.addEventListener(IOErrorEvent.IO_ERROR, loadError, false, 0 , true);			// add event listener IO_ERROR, it's called when error ocurs 
			_sound.load(new URLRequest(_soundName));											// load sound using the _soundName variable
		}
		

		private function soundLoaded(e:Event):void {
			if(_autoPlay == "true"){															// check is auto play = true
				_soundChannel = _sound.play();													// start to play the sound
				_soundTransform = new SoundTransform(_volume);									// set the volume
				_soundChannel.soundTransform = _soundTransform;									// set the sound transform
				_soundPlaying = true;															// set sound playing = true
				
			}else{
				_soundPlaying = false;															// else set _soundPlaying to false
			}
			_soundChannel.addEventListener(Event.SOUND_COMPLETE, soundComplete, false, 0, true);
		}
		
		private function soundComplete(e:Event):void {
			if(_loop == "false"){
				_soundChannel.stop();																// when sound complete playing, stop it
				_soundPlaying = false;																// set the _soundPlaying to false
			} else {
				_soundChannel.stop();
				_soundChannel = _sound.play(0);															
				_soundPlaying = true;	
				_soundChannel.addEventListener(Event.SOUND_COMPLETE, soundComplete, false, 0, true);
			}
		}
		

		private function loadError(e:IOErrorEvent):void {
			trace("error loading the sound file!");												// when error occurs trace error message
		}
		
	
		public function playSound ():void {
			if(_sound.bytesLoaded == _sound.bytesTotal){										// check if sound loaded
				if(_soundPosition == 0)															// set position to the begening of the sound file
					_soundChannel = _sound.play();												// start to play
				else 
					_soundChannel = _sound.play(_soundPosition);								// else check the position to _soundPosition
						
				_soundPlaying = true;															// set _soundPlaying to true
			} else {
				_soundChannel.stop();															// else if not loaded, stop 
				_soundPlaying = false;															// set _soundPlaying to false
			}
		}
		public function stopSound():void {
			_soundChannel.stop();																// public function used to stop the sound from outside,
			_soundPlaying = false;																// of this class	
			_soundPosition = 0;
		}
		public function pouseSound():void {
			_soundPosition = _soundChannel.position;											// public function used to pouse sound from outside
			_soundChannel.stop();																// of this class
			_soundPlaying = false;
		}
		
		public function get playing ():Boolean {	
			return _soundPlaying;																// get function, enables to easily check if the sound is playing
		}		
		public function set volume (soundVolume:Number):void {	
			_volume = soundVolume;																// set the colume of the sound from outside of this class
			_soundTransform = new SoundTransform(_volume);
			_soundChannel.soundTransform = _soundTransform;
		}
		public function get volume ():Number {
			return _volume;																		// check the volume from outside of this class.
		}
	}
}