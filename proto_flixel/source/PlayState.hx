package;

import flixel.FlxState;
import haxe.io.Bytes;

class PlayState extends FlxState
{
	override public function create()
	{
		super.create();

		// var s = "😂";
		var s = "\u{1F468}\u{200D}\u{1F3FE}";

		var bUtf8 = Bytes.ofString(s, UTF8);
		trace(bUtf8.toHex());

		var text = new flixel.text.FlxText(0, 0, 0, s, 64);
		text.screenCenter();
		add(text);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
