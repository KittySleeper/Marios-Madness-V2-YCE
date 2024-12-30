//i stole this from SDX

var ofs:Int = 25;
var ofs1:Int = 25;

function updatePost(elapsed) {
	if (PlayState.section != null && PlayState.section.mustHitSection) {
		switch (PlayState.boyfriend.animation.curAnim.name) {
			case "singLEFT":
				PlayState.camFollow.x = PlayState.camFollow.x - ofs;
			case "singRIGHT":
				PlayState.camFollow.x = PlayState.camFollow.x + ofs;
			case "singUP":
				PlayState.camFollow.y = PlayState.camFollow.y - ofs;
			case "singDOWN":
				PlayState.camFollow.y = PlayState.camFollow.y + ofs;
		}
	} else {
		switch (PlayState.dad.animation.curAnim.name) {
			case "singLEFT":
				PlayState.camFollow.x = PlayState.camFollow.x - ofs1;
			case "singRIGHT":
				PlayState.camFollow.x = PlayState.camFollow.x + ofs1;
			case "singUP":
				PlayState.camFollow.y = PlayState.camFollow.y - ofs1;
			case "singDOWN":
				PlayState.camFollow.y = PlayState.camFollow.y + ofs1;
		}
	}
}