package
{
	/**
	 *Author Steven Bakker
	 * @param Posx:Number 
	 * @param Posy:Number
	 * @param Sizex:Number
	 * @param Sizey:Number
	 * 
	 * Deze class wordt de stage groote aangepast naar fullscreen of terug.
	 * Dit gaat doormiddel van een button die op de stage geplaast moet worden met addchild daarnaast
	 * is er ook een mogelijkheid om hem automatishe op fullscreen te zetten.
	 * Gebruik hiervoor de fullscreenauto() functie na de addChild van het Object!
	 * WARNING! Alle objecten op de stage schalen mee en zullen dus groter worden!
	 */
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
		
		public function Screensize(Posx:Number,Posy:Number,Sizex:Number,Sizey:Number)
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