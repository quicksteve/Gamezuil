package
{
	public class Safeclass
	{
		static private var safe:Array = new Array();
		
		public function Safeclass()
		{
			
		}
		
		public function storecode(code:Array) {
			safe = code;
			return true;
		}
		
		public function checkcode(arraynumber:Number):Number {
			return safe[arraynumber];
		}
	}
}