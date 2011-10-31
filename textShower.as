package
{
	import flash.display.MovieClip;
	import flash.text.*
	import flash.events.Event;
	
	public class textShower extends MovieClip
	{
		var tekstLocatieX:Number = 265
		var tekstLocatieY:Number = 300
		var theText:String
		public var myTextveld:TextField = new TextField();
		
		public function textShower(theText):void
		{
			
			myTextveld.autoSize;
			myTextveld.y = tekstLocatieY + 50;
			myTextveld.x = tekstLocatieX;
			myTextveld.text = theText
			myTextveld.alpha = 0
			myTextveld.backgroundColor = 0x0000FF
			adder(myTextveld);
			
			addEventListener(Event.ENTER_FRAME, onEnterFrame);
			
			
			
		}
		public function onEnterFrame(event:Event):void{
			if(myTextveld.alpha <= 1){
			myTextveld.alpha += 0.07
			}
			
			if(myTextveld.y >= tekstLocatieY){
			myTextveld.y -= 2
			}
		}
		
		public function adder(lol:TextField):void{
			addChild(lol)
		}
		
	}
}