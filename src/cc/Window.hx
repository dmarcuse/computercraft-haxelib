package cc;

import cc.Term;

@:native("window")
@:luaDotMethod
extern class Window extends TerminalObject {
	public static function create(parent: TerminalObject, x: Int, y: Int, width: Int, height: Int, ?visible: Bool): Window;

	public function setVisible(visible: Bool): Void;
	public function redraw(): Void;
	public function restoreCursor(): Void;
	public function getPosition(): TerminalPosition;
	public function reposition(x: Int, y: Int, ?width: Int, ?height: Int): Void;
}