var iconP3;
var iconP3Track = false;

function create() {
    gf.y += 100000;

    iconP3 = new HealthIcon("johndick");
    iconP3.cameras = [camHUD];
    iconP3.auto = false;
    iconP3.y += 2000;
    add(iconP3);
}

function update(elapsed) {
    if (iconP3Track)
        iconP3.setPosition(iconP2.x - 55, iconP2.y - 55);
}

function onPsychEvent(event:String, v1:Dynamic, v2:Dynamic) {
    switch (event) {
        case "Triggers Universal":
            switch (v1) {
                case "2":
                    iconP3.x = iconP2.x - 55;
                    FlxTween.tween(gf, {y: gf.y - 100000}, 3, {ease: FlxEase.expoOut});
                    FlxTween.tween(iconP3, {y: iconP2.y - 55}, 3, {ease: FlxEase.expoOut, onComplete: function(tween) {
                        iconP3Track = true;
                    }});

                    trace("trum**bone**");
            }
    }
}