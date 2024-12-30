function create() {
    note.loadGraphic(Paths.image("notetypes/poison"));
    note.noteOffset.x -= 20;
    note.setGraphicSize(note.width * 0.8);
    note.updateHitbox();
    note.splashColor = 0xFF31A24C;
}

function onPlayerHit(){}

function onMiss(){}