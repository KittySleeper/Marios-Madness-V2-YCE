var poisonMultiplier:Float = 0;

var poisonTimers = [];

function update(elapsed) {
    health -= (.012 * poisonMultiplier) * elapsed * 60;
}

function onPlayerHit(n) {
    if (FlxG.state.SONG.noteTypes[n.noteType] == "Nota veneno") {
        poisonMultiplier += .11;

        poisonTimers.push(new FlxTimer().start(FlxG.random.float(5, 10), function(timer) {
            poisonMultiplier -= .11;
            trace("oopsies timer is up posion multiplier is now " + poisonMultiplier);
        }));

        trace("oopsies posion multiplier is now " + poisonMultiplier);
    }
}