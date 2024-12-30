function create() {
	camZooming = false; // PE has this off by default for some reason so idk man
}

function onPsychEvent(event:String, v1:Dynamic, v2:Dynamic) {
	switch (event) {
		case "Add Camera Zoom":
			camGame.zoom += Std.parseFloat(v1);
			camHUD.zoom += Std.parseFloat(v2);

		case "Play Animation":
			switch (v2) {
				case "bf", "boyfriend", "1":
					boyfriends[0].playAnim(v1, true);
				case "gf", "girlfriend":
					gf.playAnim(v1, true);
				default:
					dads[0].playAnim(v1, true);
					dad.camOffset.y += 120;
					dad.camOffset.x += 120;
			}

		case "Change Character":
			if (v1 == "dad" || v1 == "1")
				changeDad(mod + ":" + v2);

		//MM Events

		case "Set Cam Zoom":
			defaultCamZoom = Std.parseFloat(v1);

		case "Ocultar HUD":
			var stupidTimers = [0.5, 0.001, 0.5];

			FlxTween.tween(camHUD, {alpha: if (v1 != "0") 1 else 0}, stupidTimers[Std.parseInt(v1)], {ease: FlxEase.quadInOut});
	}
}