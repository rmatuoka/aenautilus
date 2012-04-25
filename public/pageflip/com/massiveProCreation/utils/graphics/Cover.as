package com.massiveProCreation.utils.graphics
{
	import flash.display.Sprite;
	
	public class Cover extends Sprite
	{
		public function Cover()
		{
			this.mouseEnabled = true;
			this.mouseChildren = false;
			
			this.graphics.beginFill(0x000000, 1);
			this.graphics.drawRect(0, 0, 100, 100);
			this.graphics.endFill();
			
			super();
		}
	}
}