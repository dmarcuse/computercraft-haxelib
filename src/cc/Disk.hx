package cc;

@:native("disk")
extern class Disk {
	public static function isPresent(side: String): Bool;
	public static function hasData(side: String): Bool;
	public static function getMountPath(side: String): String;
	public static function setLabel(side: String, label: String): Void;
	public static function getLabel(side: String): String;
	public static function getID(side: String): Int;
	public static function hasAudio(side: String): Bool;
	public static function getAudioTitle(side: String): String;
	public static function playAudio(side: String): Void;
	public static function stopAudio(side: String): Void;
	public static function eject(side: String): Void;
}