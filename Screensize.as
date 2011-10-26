package
{
	import flash.display.Sprite;
	import flash.events.MouseEvent;

	public class ScreensizeClass extends Sprite
	{
		import flash.display.StageDisplayState;
		import flash.display.Sprite;
		import flash.display.Graphics;
		
		private var posx:uint;
		private var posy:uint;
		private var sizex:Number;
		private var sizey:Number;
		
		public function ScreensizeClass(Posx,Posy,Sizex,Sizey)
		{
			posx = Posx;
			posy = Posy;
			sizex = Sizex;
			sizey = Sizey;
			
			drawbutton();
			this.addEventListener(MouseEvent.CLICK,fullscreen);
		}
		
		private function fullscreen(mouseEvent:MouseEvent)
		{
			if (stage.displayState == StageDisplayState.NORMAL) {
				stage.displayState = StageDisplayState.FULL_SCREEN;
			} else if(stage.displayState == StageDisplayState.FULL_SCREEN) {
				stage.displayState = StageDisplayState.NORMAL;	
			}
		}
		
		private function drawbutton() {
			this.graphics.beginFill(0x00000);
			this.graphics.drawRoundRect(posx,posy,sizex,sizey,3,3);
			this.graphics.endFill();
			
		}
	}
}