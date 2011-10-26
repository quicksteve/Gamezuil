package
{
	import flash.display.Sprite;
	import flash.events.MouseEvent;

	public class Screensize extends Sprite
	{
		import flash.display.StageDisplayState;
		import flash.display.Sprite;
		import flash.display.Graphics;
		
		private var posx:uint;
		private var posy:uint;
		private var sizex:Number;
		private var sizey:Number;
		
		public function Screensize(Posx:Number,Posy,Sizex,Sizey)
		{
			posx = Posx;
			posy = Posy;
			sizex = Sizex;
			sizey = Sizey;
			drawbutton();
			this.addEventListener(MouseEvent.CLICK,fullscreen);
		}
		
		private function fullscreen(e:MouseEvent)
		{
			switch(stage.displayState) {
				case "normal":
					stage.displayState = "fullScreen";    
				break;
				case "fullScreen":
		
				default:
					stage.displayState = "normal";    
				break;
			}
		}
		
		private function drawbutton() {
			this.graphics.beginFill(0x00000);
			this.graphics.drawRoundRect(posx,posy,sizex,sizey,3,3);
			this.graphics.endFill();
		}
		
		public function fullscreenauto() {
			stage.displayState = StageDisplayState.FULL_SCREEN; 
		}
	}
}