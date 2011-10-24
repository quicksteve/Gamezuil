package
{
	import flash.display.Sprite;

	public class ScreensizeClass extends Sprite implements Screensize
	{
		import flash.display.StageDisplayState;
		import flash.display.Sprite;
		import flash.display.Graphics;
		
		private var posx:uint;
		
		public function ScreensizeClass()
		{
			
		}
		
		public function fullscreen()
		{
			if (stage.displayState == StageDisplayState.NORMAL) {
				stage.displayState = StageDisplayState.FULL_SCREEN;
			} else if(stage.displayState == StageDisplayState.FULL_SCREEN) {
				stage.displayState = StageDisplayState.NORMAL;	
			}
		}
		
		public function drawbutton() {
			this.graphics.beginFill(0x00000);
			this.graphics.drawRoundRect(posx,posy,width,height,3,3);
			
		}
	}
}