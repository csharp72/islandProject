package  {
	
	import flash.display.MovieClip;
	
	
	public class Island extends MovieClip {
		
		
		public function Island() {
			// constructor code
			Main.islands.push( this );
			trace( Main.islands )
		}
		
		public function pulse(){
			gotoAndPlay('pulse');
		}
	}
	
}
