package {
	
	import flash.display.MovieClip;
	import flash.utils.Timer;
    import flash.events.TimerEvent;
	
	
	public class Main extends MovieClip {
		
		private var pulseTimer:Timer = new Timer(1000);
		public static var islands:Array = new Array();
		
		public function Main() {
			// constructor code
			trace( 'run' );
			pulseTimer.addEventListener(TimerEvent.TIMER, timerHandler);
			pulseTimer.start();
		}
		
		public function timerHandler(e){
			trace('pulse');
			forEach( islands, function( island ){
				island.pulse();
			});			
		}
		
		public function forEach(arr, cb){
			for( var i=0; i<arr.length; i++ ){
				cb( arr[i], i );
			}
		}
		
	}
	
}
