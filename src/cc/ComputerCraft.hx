package src.cc;

@:native("_G")
extern class ComputerCraft {
	public static var _CC_DEFAULT_SETTINGS: String;
	public static function printError(message: String): Void;
	public static function sleep(seconds: Float): Void;
	public static function read(?replacement: String): String; // todo: second and third args
	public static var _HOST: String;
}