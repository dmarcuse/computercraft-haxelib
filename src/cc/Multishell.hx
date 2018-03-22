package cc;

import lua.Table;
import haxe.extern.Rest;

@:native("multishell")
extern class Multishell {
	public static function getCurrent(): Int;
	public static function getCount(): Int;
	public static function launch(environment: Table<Dynamic, Dynamic>, path: String, args: Rest<String>): Int;
	public static function setFocus(id: Int): Void;
	public static function setTitle(id: Int, title: String): Void;
	public static function getTitle(id: Int): String;
	public static function getFocus(): Int;
}