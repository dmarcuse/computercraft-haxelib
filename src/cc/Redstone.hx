package cc;

import lua.Table;
import cc.Colors;

@:native("redstone")
extern class Redstone {
	public static function getSides(): Table<Int, String>;
	public static function getInput(side: String): Bool;
	public static function setOutput(side: String, state: Bool): Void;
	public static function getOutput(side: String): Bool;
	public static function getAnalogInput(side: String): Int;
	public static function setAnalogOutput(side: String, strength: Int): Void;
	public static function getAnalogOutput(side: String): Int;
	public static function getBundledInput(side: String): Color;
	public static function setBundledOutput(side: String, state: Color): Void;
	public static function getBundledOutput(side: String): Color;
	public static function testBundledInput(side: String, value: Color): Bool;
}