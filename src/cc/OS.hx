package cc;

import lua.Table;
import lua.TableTools;
import haxe.extern.Rest;

@:native("os")
extern class OS {
	public static function version(): String;
	public static function getComputerID(): Int;
	public static function getComputerLabel(): String;
	public static function setComputerLabel(label: String): Void;
	public static function run(environment: Table<Dynamic, Dynamic>, path: String, args: Rest<String>): Bool;
	public static function loadAPI(path: String): Bool;
	public static function unloadAPI(path: String): Void;
	public static function queueEvent(type: String, data: Rest<Dynamic>): Void;
	public static function clock(): Float;
	public static function startTimer(timeout: Int): Int;
	public static function cancelTimer(id: Int): Void;
	public static function time(): Float;
	public static function sleep(timeout: Float): Void;
	public static function day(): Int;
	public static function setAlarm(time: Float): Int;
	public static function cancelAlarm(id: Int): Void;
	public static function shutdown(): Void;
	public static function reboot(): Void;

	@:native("pullEvent") private static function _pullEvent(?type: String): Dynamic;
	@:native("pullEventRaw") private static function _pullEventRaw(?type: String): Dynamic;

	public static inline function pullEvent(?type: String): ArrayAccess<Dynamic> {
		return cast TableTools.pack(_pullEvent(type));
	}

	public static inline function pullEventRaw(?type: String): ArrayAccess<Dynamic> {
		return cast TableTools.pack(_pullEventRaw(type));
	}
}