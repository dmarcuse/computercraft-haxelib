package cc;

import haxe.Constraints;
import haxe.extern.Rest;

@:native("parallel")
extern class Parallel {
	public static function waitForAny(f1: Function, funcs: Rest<Function>): Int;
	public static function waitForAll(f1: Function, funcs: Rest<Function>): Int;
}