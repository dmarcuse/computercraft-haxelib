package cc;

import lua.Table;

@:native("help")
extern class Help {
	public static function path(): String;
	public static function setPath(path: String): Void;
	public static function lookup(topic: String): String;
	public static function topics(): Table<Int, String>;
	public static function completeTopic(prefix: String): Table<Int, String>;
}