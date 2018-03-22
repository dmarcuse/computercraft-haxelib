package cc;

@:native("vector")
extern class Vector {
	@:native("new")	public static function create(x: Int, y: Int, z: Int): Vector;

	public function add(other: Vector): Vector;
	public function sub(other: Vector): Vector;
	public function mul(n: Float): Vector;
	public function dot(other: Vector): Float;
	public function cross(other: Vector): Float;
	public function length(): Float;
	public function normalize(): Vector;
	public function round(): Vector;
	@:native("tostring") public function toString(): String;
}
