package cc;

import lua.Table;

@:enum
abstract OpenFileMode(String) {
	var Read = "r";
	var Write = "w";
	var Append = "a";
}

@:luaDotMethod
extern class FileHandle {
	public function close(): Void;
	public function readLine(): String;
	public function readAll(): String;
	public function write(data: String): Void;
	public function writeLine(data: String): Void;
	public function flush(): Void;
}

@:native("fs")
extern class FileSystem {
	public static function list(path: String): Table<Int, String>;
	public static function exists(path: String): Bool;
	public static function isDir(path: String): Bool;
	public static function isReadOnly(path: String): Bool;
	public static function getDrive(path: String): String;
	public static function getSize(path: String): Int;
	public static function getFreeSpace(path: String): Int;
	public static function makeDir(path: String): Void;
	public static function move(from: String, to: String): Void;
	public static function copy(from: String, to: String): Void;
	public static function delete(path: String): Void;
	public static function combine(base: String, part: String): String;
	public static function open(path: String, mode: OpenFileMode): FileHandle;
	public static function find(pattern: String): Table<Int, String>;
	public static function getDir(path: String): String;
	// todo: complete()
}