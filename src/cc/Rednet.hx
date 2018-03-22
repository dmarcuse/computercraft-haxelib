package cc;

import lua.Table;
import lua.TableTools;

typedef MessageData = Dynamic;

@:multiReturn
extern class ReceivedMessage<T : MessageData> {
	public var senderID: Int;
	public var message: T;
	public var distance: Float;
	public var protocol: String;
}

@:native("rednet")
extern class Rednet {
	public static function open(modem: String): Void;
	public static function close(modem: String): Void;
	public static function send(to: Int, data: MessageData, ?protocol: String): Void;
	public static function broadcast(data: MessageData, ?protocol: String): Void;
	public static function receive<T : MessageData>(?protocol: String, ?timeout: Int): ReceivedMessage<T>;
	public static function isOpen(modem: String): Bool;
	public static function host(protocol: String, hostname: String): Void;
	public static function unhost(protocol: String, hostname: String): Void;

	@:native("lookup")
	private static function _lookup(protocol: String, ?hostname: String): Dynamic;

	public static inline function lookup(protocol: String, ?hostname: String): Table<Int, Int> {
		return TableTools.pack(_lookup(protocol, hostname));
	}

	public static function run(): Void;
}