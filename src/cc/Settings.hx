package cc;

import lua.Table;

typedef SettingData = Dynamic;

@:native("settings")
extern class Settings {
	public static function set(name: String, value: SettingData): Void;
	public static function get(name: String, ?defaultValue: SettingData): SettingData;
	public static function unset(name: String): Void;
	public static function clear(): Void;
	public static function getNames(): Table<Int, String>;
	public static function load(path: String): Bool;
	public static function save(path: String): Bool;
}