package cc;

import lua.Table;
import haxe.extern.Rest;

@:native("shell")
extern class Shell {
	public static function exit(): Void;
	public static function dir(): String;
	public static function setDir(path: String): Void;
	public static function path(): String;
	public static function setPath(path: String): Void;
	public static function resolve(localPath: String): String;
	public static function resolveProgram(name: String): String;
	public static function aliases(): Table<String, String>;
	public static function setAlias(alias: String, program: String): Void;
	public static function clearAlias(alias: String): Void;
	public static function programs(?showHidden: Bool): Table<Int, String>;
	public static function getRunningProgram(): String;
	public static function run(command: String, args: Rest<String>): Bool;
	public static function openTab(command: String, args: Rest<String>): Int;
	public static function switchTab(tabID: Int): Void;
	// todo: completion functions
}
