package com.massiveProCreation.events {
	
	// IMPORTS
	import flash.events.Event;
	
	public class CustomEvent extends Event {
		// CUSTOM EVENTS 
		public static const XML_LOADED:String = "xmlLoaded";				// xml loaded
		public static const IMAGE_LOADED:String = "imageLoaded";			// image loaded
		public static const BUTTON_CLICK:String = "buttonClick";			// button click
		public static const READY_TO_DISPLAY:String = "readyToDisplay";		// module loaded and ready to display
		public static const IMAGE_CHANGE:String = "imageChange";			// image changed
		public static const PAGE_CHANGE:String = "pageChange";				// page changed
		public static const PAGE_CLICK:String = "pageClick";				// page click
		public static const KILL:String = "kill";							// kill object
		public static const ADJUST:String = "adjust";						// adjust 
		public static const ADJUST_VIDEO:String = "adjustVideo";			// adjust video
		public static const VIDEO_CLICK:String = "videoClick";			// video click
		public static const VIDEO_READY:String = "videoReady";			// video click
		public static const DOUBLE_PAGE_CLICK:String = "doublePageClick";
		public static const DISABLE_UI:String = "disableUi";
		public static const ENABLE_UI:String = "enableUi";
		
		
		public function CustomEvent (type:String, bubbles:Boolean = false, cancelable:Boolean = false) {
			super(type, bubbles, cancelable);
		}
		public override function clone() : Event{
			return new CustomEvent(type, bubbles, cancelable);
		}
		public override function toString():String {
			return formatToString("CustomEvent", "type", "bubbles", "cancelable", "eventPhase");
		}
	}
}