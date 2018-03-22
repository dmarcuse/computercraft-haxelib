package cc;

typedef TextUtilsSerializable = Dynamic;

@:native("textutils")
extern class TextUtils {
	public static function slowWrite(text: String, ?rate: Float): Void;
	public static function slowPrint(text: String, ?rate: Float): Void;
	public static function formatTime(time: Float, ?twentyFourHour: Bool): String;
	// todo: tabulate, paged tabulate
	public static function pagedPrint(text: String, freeLines: Int): Int;
	public static function serialize(data: TextUtilsSerializable): String;
	public static function unserialize<T : TextUtilsSerializable>(from: String): T;
	public static function serializeJSON(data: TextUtilsSerializable, ?unquoteKeys: Bool): String;
	public static function urlEncode(data: String): String;
	// todo: complete
}