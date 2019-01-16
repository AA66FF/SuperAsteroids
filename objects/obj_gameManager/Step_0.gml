var _newAsteroids = [];
astNumber = 0;
for (var i = array_length_1d(asteroids)-1; i > -1; i--) {
	if (asteroids[i].hp <= 0) {
		instance_destroy(asteroids[i],true);
	} else {
		_newAsteroids[astNumber] = asteroids[i];
		astNumber += 1;
	}
}
asteroids = _newAsteroids;

if (array_length_1d(asteroids) == 0) {
	wave += 1;
	waveStart = true;
}

if (wave == 1) {
	asteroidLimits = [2,5];
	bigAsteroidLimits = [1,2];
	superAsteroidLimits = [0,0];
	bossteroidLimits = [0,0];
	megaBossteroidLimits = [0,0];
	gigaBossteroidLimits = [0,0];
	ywdAsteroidLimits = [0,0];
	killedAllTheDinosaursLimits = [0,0];
}

if (waveStart == true) {
	toSpawn1 = random_range(asteroidLimits[0],asteroidLimits[1]);
	toSpawn2 = random_range(bigAsteroidLimits[0],bigAsteroidLimits[1]);
	toSpawn3 = random_range(superAsteroidLimits[0],superAsteroidLimits[1]);
	toSpawn4 = random_range(bossteroidLimits[0],bossteroidLimits[1]);
	toSpawn5 = random_range(megaBossteroidLimits[0],megaBossteroidLimits[1]);
	toSpawn6 = random_range(gigaBossteroidLimits[0],gigaBossteroidLimits[1]);
	toSpawn7 = random_range(ywdAsteroidLimits[0],ywdAsteroidLimits[1]);
	toSpawn8 = random_range(killedAllTheDinosaursLimits[0],killedAllTheDinosaursLimits[1]);
	waveStart = false;
	waveSpawning = true;
}

if (waveSpawning == true) {
	//Weights to spawn
	spawnNothing = 200;
	spawn1 = toSpawn1*5;
	spawn2 = toSpawn2*5;
	spawn3 = toSpawn3*5;
	spawn4 = toSpawn4*5;
	spawn5 = toSpawn5*5;
	spawn6 = toSpawn6*5;
	spawn7 = toSpawn7*5;
	spawn8 = toSpawn8*5;
	allWeights = spawnNothing+spawn1+spawn2+spawn3+spawn4+spawn5+spawn6+spawn7+spawn8;
	var r = random_range(0,allWeights);
	calculateWeights();
}

