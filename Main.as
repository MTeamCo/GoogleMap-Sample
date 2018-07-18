package  {
	import flash.display.MovieClip;
	import flash.filesystem.File;
	import flash.geom.Rectangle;
	import flash.utils.ByteArray;
	
	import map.AddMarker;
	import map.DisplayMapOption;
	import map.Map;
	import map.Marker;
	
	import mx.utils.Base64Encoder;
	
	public class Main  extends MovieClip
	{

		private var addmarker:AddMarker = new AddMarker();
		private var displayMapOption:DisplayMapOption = new DisplayMapOption();
		public function Main() {
			// constructor code
			Map.setup('Data/','markerAndPanTo.html',true);
			displayMapOption.area = new Rectangle(0,0,768,1024);
			var markerList:Vector.<Marker> = new Vector.<Marker>();
			
			markerList.push(new Marker(35.7232423,51.3862085));
			displayMapOption.showAllMarker = true;
			displayMapOption.location = markerList;
			displayMapOption.defaultZoom = 17;
			displayMapOption.mapTypeId = DisplayMapOption.mapTypeId.SATELLITE;
			
			
			/*var _file:File = File.applicationDirectory.resolvePath('Data/icon.png'); 
			var _image:ByteArray = FileManager.loadFile(_file);
				var _bas64:Base64Encoder = new Base64Encoder();
				 _bas64.encodeBytes(_image);*/
				 displayMapOption.imageUrl = 'http://uupload.ir/files/wvga_tmu.png';
			addmarker.setup(this,displayMapOption);
		}

	}
	
}
