package cc;

import lua.Table;
import cc.Colors;

typedef Image = Table<Int, Table<Int, Int>>;

@:native("paintutils")
extern class PaintUtils {
	public static function loadImage(path: String): Image;
	public static function drawImage(image: Image, x: Int, y: Int): Void;
	public static function drawPixel(x: Int, y: Int, ?color: Color): Void;
	public static function drawLine(startX: Int, startY: Int, endX: Int, endY: Int, ?color: Color): Void;
	public static function drawBox(startX: Int, startY: Int, endX: Int, endY: Int, ?color: Color): Void;
	public static function drawFilledBox(startX: Int, startY: Int, endX: Int, endY: Int, ?color: Color): Void;
}