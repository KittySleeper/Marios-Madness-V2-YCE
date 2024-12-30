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
			}

		case "Change Character":
			if (v1 == "dad" || v1 == "1")
				changeDad(mod + ":" + v2);
	}
}