package src.cc;

import lua.Table;

@:multiReturn
extern class HTTPCheckReturn {
	public var allowed: Bool;
	public var error: Null<String>;
}

extern class HTTPResponse {
	public function close(): Void;
	public function readLine(): String;
	public function readAll(): String;
	public function getResponseCode(): Int;
}

@:native("http")
extern class HTTP {
	public static function checkURL(url: String): Bool;
	public static function request(url: String, ?postData: String, ?headers: Table<String, String>): Void;
	public static function get(url: String, ?headers: Table<String, String>): Null<HTTPResponse>;
	public static function post(url: String, postData: String, ?header: Table<String, String>): Null<HTTPResponse>;
}