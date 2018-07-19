package  {
	import flash.display.MovieClip;
	import flash.filesystem.File;
	import flash.geom.Rectangle;
	import flash.utils.ByteArray;
	
	import map.AddMarker;
	import map.DisplayMapOption;
	import map.LatLngBounds;
	import map.Map;
	import map.Marker;
	
	import mx.utils.Base64Encoder;
	
	public class Main  extends MovieClip
	{

		private var addmarker:AddMarker = new AddMarker();
		private var displayMapOption:DisplayMapOption = new DisplayMapOption();
		public function Main() {
			Map.setup('Data/','markerAndPanTo.html',true);
			displayMapOption.area = new Rectangle(0,0,768,1024);
			var markerList:Vector.<Marker> = new Vector.<Marker>();
			
			markerList.push(new Marker(35.7232423,51.382));
			displayMapOption.showAllMarker = true;
			displayMapOption.location = markerList;
			displayMapOption.defaultZoom = 17.5;
			//displayMapOption.mapTypeId = DisplayMapOption.mapTypeId.SATELLITE;
			
			displayMapOption.latLngBoundsImage = new LatLngBounds(35.71900,51.37748,35.7238,51.3869);
		
			//alpha image		
		//	displayMapOption.imageUrl = 'http://uupload.ir/files/25fo_pardismarkazi2.png';
			displayMapOption.imageUrl = 'http://uupload.ir/files/63he_pardismarkaziedit2.png';
			addmarker.setup(this,displayMapOption);
		}

	}
	
}
