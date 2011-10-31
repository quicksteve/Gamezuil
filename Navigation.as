package
{
	import flash.display.StageDisplayState;
	import flash.display.Sprite;
	import flash.display.Graphics;
	import flash.display.*
	import flash.events.*
	
	public class Navigation extends UserInterface
	{
		
		public var plattegrond:Array = new Array();
		public var pijlnaarboven:pijlomhoog = new pijlomhoog
		public var pijlnaarlinks:pijllinks = new pijllinks
		public var pijlnaarbeneden:pijlomlaag = new pijlomlaag
		public var pijlnaarrechts:pijlrechts = new pijlrechts
		public var kleuren:Array = new Array();
		public var xnavigatie:Number = 1
		public var ynavigatie:Number = 1
		public function Navigation()
		{
			kleuren.push("blauw", "zilver", "oranje", "rood")
			stommepijlen();
			
			plattegrondVullen();
			
			checkNavigation();
			
			pijlnaarboven.addEventListener(MouseEvent.CLICK, onMouseClickEvent1);
			pijlnaarbeneden.addEventListener(MouseEvent.CLICK, onMouseClickEvent2);
			pijlnaarlinks.addEventListener(MouseEvent.CLICK, onMouseClickEvent3);
			pijlnaarrechts.addEventListener(MouseEvent.CLICK, onMouseClickEvent4);
			
			
			
			//maak een plattegrond 
			// zorg dat je met de 4 pijlen door de array kan navigeren
			// geef elke plek in de array een string mee
			// link de string aan een achtergrond
			
			
			
			
			
			
			
			
			
			
			
			
		}
		
		private function plattegrondVullen():void
		{
			plattegrond = new Array()
			
			
			var a:Number;
			var b:Number;
			var c:String;
			
			for(a=0; a<6; a++)
			{
				plattegrond[a] = new Array();
				for(b=0; b<3; b++)
				{
				if(a < 4){
				c = kleuren[a] + String(b)
				
				plattegrond[a][b] = c	
				}
				}
			}
		plattegrond[4][1] = "kopieerruimte"
		plattegrond[5][1] = "beveiligingsruimte"
		
		
		
		}
		
		public function onMouseClickEvent1(event:Event):void{
			
			ynavigatie += 1
			
			checkNavigation();
			
		}
		
		public function onMouseClickEvent2(event:Event):void{
			
			
			ynavigatie -= 1
			
			checkNavigation();
				
		}
		public function onMouseClickEvent3(event:Event):void{
			
			
			xnavigatie -= 1
			
			checkNavigation();
			
		}
		
		public function onMouseClickEvent4(event:Event):void{
			
			xnavigatie += 1
			
			checkNavigation();
		}
		
		private function checkNavigation():void
		{
		
			
			if((xnavigatie - 1) < 0 && pijlnaarlinks.visible == true){
				pijlnaarlinks.visible = false
			}else if(pijlnaarlinks.visible == false && (xnavigatie - 1) >= 0){
				pijlnaarlinks.visible = true
			}
			
			if(((xnavigatie + 1) > 5 || plattegrond[(xnavigatie + 1)][ynavigatie] == null) && pijlnaarrechts.visible == true){
				pijlnaarrechts.visible = false
					
			}else if(pijlnaarrechts.visible == false && (xnavigatie + 1) <= 5){
				pijlnaarrechts.visible = true
			}
			
			
			if(((ynavigatie + 1) > 2 || plattegrond[xnavigatie][(ynavigatie + 1)] == null) && pijlnaarboven.visible == true){
				pijlnaarboven.visible = false
			}else if(pijlnaarboven.visible == false && (ynavigatie + 1) <= 2 && plattegrond[xnavigatie][ynavigatie + 1] != null){
				pijlnaarboven.visible = true
			}
			
			if(((ynavigatie - 1) < 0 || plattegrond[xnavigatie][(ynavigatie - 1)] == null) && pijlnaarbeneden.visible == true){
				pijlnaarbeneden.visible = false
			}else if(pijlnaarbeneden.visible == false && ynavigatie - 1 >= 0 && plattegrond[xnavigatie][ynavigatie - 1] != null){
				pijlnaarbeneden.visible = true
			}
		
			trace(plattegrond[xnavigatie][ynavigatie])
			
		}
		
		private function stommepijlen():void
		{
			pijlnaarboven.x = 400
			pijlnaarboven.y = 250 
			pijlnaarboven.scaleX = 0.5
			pijlnaarboven.scaleY = 0.5
			addChild(pijlnaarboven)
			
			pijlnaarbeneden.x = 400
			pijlnaarbeneden.y = 350 
			pijlnaarbeneden.scaleX = 0.5
			pijlnaarbeneden.scaleY = 0.5
			addChild(pijlnaarbeneden)
			
			pijlnaarlinks.x = 345
			pijlnaarlinks.y = 300 
			pijlnaarlinks.scaleX = 0.5
			pijlnaarlinks.scaleY = 0.5
			addChild(pijlnaarlinks)
			
			pijlnaarrechts.x = 455
			pijlnaarrechts.y = 300 
			pijlnaarrechts.scaleX = 0.5
			pijlnaarrechts.scaleY = 0.5
			addChild(pijlnaarrechts)
		}
	}
}