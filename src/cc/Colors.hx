package cc;

import haxe.extern.Rest;

typedef Color = Int;

@:native("colors")
extern class Colors {
	public static function combine(colors: Rest<Color>): Color;
	public static function subtract(from: Color, colors: Rest<Color>): Color;
	public static function test(it: Color, check: Color): Bool;

	public static var white: Color;
	public static var orange: Color;
	public static var magenta: Color;
	public static var lightBlue: Color;
	public static var yellow: Color;
	public static var lime: Color;
	public static var pink: Color;
	public static var gray: Color;
	public static var lightGray: Color;
	public static var cyan: Color;
	public static var purple: Color;
	public static var blue: Color;
	public static var brown: Color;
	public static var green: Color;
	public static var red: Color;
	public static var black: Color;
}
