package
{
	public class Safeclass
	{
		static private var safe:Array = new Array();
		static private var inven:Array = new Array();
		
		public function Safeclass()
		{
			
		}
		
		public function storecode(code:Array):void {
			safe = code;
		}
		
		public function checkcode(arraynumber:Number):Number {
			return safe[arraynumber];
		}
		
		public function setInverntory(inv:Number = 0,array:Boolean = false,Arry:Array = null):void {
			if(array == true) {
				inven = Arry;
			} else {
				inven.push(inv);
			}
		}
		
		public function getInventory():Array {
			return inven;
		}
	}
}