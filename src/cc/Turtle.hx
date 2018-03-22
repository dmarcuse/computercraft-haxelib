package cc;

import haxe.extern.EitherType;

@:multiReturn
extern class TurtleActionResult {
	public var successful: Bool;
	public var error: String;
}

extern class TurtleItemDetail {
	public var name: String;
	public var damage: Int;
	public var count: Int;
}

extern class TurtleBlockDetail {
	public var name: String;
	public var metadata: Int;
	public var state: Dynamic;
}

@:multiReturn
extern class TurtleInspectResult {
	public var successful: Bool;
	public var result: EitherType<String, TurtleBlockDetail>;
}

@:native("turtle")
extern class Turtle {
	public static function craft(qty: Int): TurtleActionResult;
	public static function forward(): TurtleActionResult;
	public static function back(): TurtleActionResult;
	public static function up(): TurtleActionResult;
	public static function down(): TurtleActionResult;
	public static function turnLeft(): TurtleActionResult;
	public static function turnRight(): TurtleActionResult;
	public static function select(slot: Int): Bool;
	public static function getSelectedSlot(): Int;
	public static function getItemCount(?slot: Int): Int;
	public static function getItemSpace(?slot: Int): Int;
	public static function getItemDetail(?slot: Int): TurtleItemDetail;
	public static function equipLeft(): TurtleActionResult;
	public static function equipRight(): TurtleActionResult;
	public static function attack(): TurtleActionResult;
	public static function attackUp(): TurtleActionResult;
	public static function attackDown(): TurtleActionResult;
	public static function dig(): TurtleActionResult;
	public static function digUp(): TurtleActionResult;
	public static function digDown(): TurtleActionResult;
	public static function place(?signText: String): TurtleActionResult;
	public static function placeUp(): TurtleActionResult;
	public static function placeDown(): TurtleActionResult;
	public static function detect(): Bool;
	public static function detectUp(): Bool;
	public static function detectDown(): Bool;
	public static function inspect(): TurtleInspectResult;
	public static function inspectUp(): TurtleInspectResult;
	public static function inspectDown(): TurtleInspectResult;
	public static function compare(): Bool;
	public static function compareUp(): Bool;
	public static function compareDown(): Bool;
	public static function compareTo(slot: Int): Bool;
	public static function drop(?count: Int): TurtleActionResult;
	public static function dropUp(?count: Int): TurtleActionResult;
	public static function dropDown(?count: Int): TurtleActionResult;
	public static function suck(?amount: Int): TurtleActionResult;
	public static function suckUp(?amount: Int): TurtleActionResult;
	public static function suckDown(?amount: Int): TurtleActionResult;
	public static function refuel(?qty: Int): TurtleActionResult;
	public static function getFuelLevel(): Int;
	public static function getFuelLimit(): Int;
	public static function transferTo(to: Int, ?qty: Int): Bool;
}