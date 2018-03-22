package cc;

import lua.Table;

@:multiReturn
extern class CommandExecutionResult {
	var successful: Bool;
	var output: Table<Int, String>;
}

@:multiReturn
extern class BlockPosition {
	var x: Int;
	var y: Int;
	var z: Int;
}

extern class BlockInfo {
	var name: String;
	var metadata: Int;
	var state: Dynamic;
}

@:native("commands")
extern class Commands {
	public static function exec(command: String): CommandExecutionResult;
	public static function execAsync(command: String): Int;
	public static function list(): Table<Int, String>;
	public static function getBlockPosition(): BlockPosition;
	public static function getBlockInfo(x: Int, y: Int, z: Int): BlockInfo;
	public static function getBlockInfos(x1: Int, y1: Int, z1: Int, x2: Int, y2: Int, z2: Int): Table<Int, BlockInfo>;
}