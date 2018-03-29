package cc;

import cc.Colors;

@:multiReturn
extern class TerminalPosition {
	public var x: Int;
	public var y: Int;
}

@:multiReturn
extern class TerminalSize {
	public var width: Int;
	public var height: Int;
}

@:luaDotMethod
extern class TerminalObject {
	public function write(text: String): Void;
	public function blit(text: String, colors: String, background: String): Void;
	public function clear(): Void;
	public function clearLine(): Void;
	public function getCursorPos(): TerminalPosition;
	public function setCursorPos(x: Int, y: Int): Void;
	public function setCursorBlink(value: Bool): Void;
	public function isColor(): Bool;
	public function getSize(): TerminalSize;
	public function scroll(lines: Int): Void;
	public function setTextColor(color: Color): Void;
	public function getTextColor(): Color;
	public function setBackgroundColor(color: Color): Void;
	public function getBackgroundColor(): Color;
}

@:native("term")
extern class Term {
	public static function write(text: String): Void;
	public static function blit(text: String, colors: String, background: String): Void;
	public static function clear(): Void;
	public static function clearLine(): Void;
	public static function getCursorPos(): TerminalPosition;
	public static function setCursorPos(x: Int, y: Int): Void;
	public static function setCursorBlink(value: Bool): Void;
	public static function isColor(): Bool;
	public static function getSize(): TerminalSize;
	public static function scroll(lines: Int): Void;
	public static function setTextColor(color: Color): Void;
	public static function getTextColor(): Color;
	public static function setBackgroundColor(color: Color): Void;
	public static function getBackgroundColor(): Color;

	public static function redirect(target: TerminalObject): TerminalObject;
	public static function current(): TerminalObject;
	public static function native(): TerminalObject;
}