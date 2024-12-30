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
                        iconP3.auto = true;
                    }});

                    trace("trum**bone**");
                
                case "4":
                    var dadPos = [dad.x, dad.y];

                    iconP3Track = false;
                    iconP3.auto = false;

                    for (obj in [gf, iconP3])
                        FlxTween.tween(obj, {x: 3500, y: -400}, 1.5, {ease: FlxEase.expoOut});

                    new FlxTimer().start(1.5, function(timer) {
                        var gfIndex = FlxG.state.members.indexOf(gf) - 2;

                        gf.kill();

                        gf = new Character(685, -1200, mod + ":yoshi-exe"); //20
                        gf.scrollFactor.set(0.55, 0.55);
                        gf.playAnim("prepow");
                        insert(gfIndex, gf);

                        FlxTween.tween(gf, {y: 250}, 0.20, {startDelay: 1, onComplete: function(tween) {
                            gf.playAnim("pow");
                            dad.playAnim("xd");
                            FlxG.state.members[6].visible = false;

                            FlxTween.tween(dad, {y: 2000}, 0.65);

                            new FlxTimer().start(3, function(timer) {
                                dad.setPosition(dadPos[0], dadPos[1]);
                            });
                        }});
                    });
            }
    }
}