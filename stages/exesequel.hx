var stage:Stage = null;

function create() {
	stage = loadStage('exesequel');
	stage.getSprite("FireL").flipX = true; //why tf dont the stage editor have flipX
}

function update(elapsed) {
	stage.update(elapsed);
}

function beatHit(curBeat) {
	stage.onBeat();
}