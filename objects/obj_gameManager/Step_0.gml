if (room == rm_space) {
_newAsteroids = [];
astNumber = 0;
for (var i = array_length_1d(asteroids)-1; i > -1; i--) {
	if (asteroids[i].dead == false) {
		var _end = array_length_1d(_newAsteroids);
		_newAsteroids[_end] = asteroids[i];
	} else {
		instance_destroy(asteroids[i],true)
	}
}
asteroids = _newAsteroids;

if (array_length_1d(asteroids) == 0 and not waveSpawning) {
	wave += 1;
	show_debug_message("WAVE "+string(wave));
	if (wave > 2) {
		var rand = irandom_range(0,6);
		if (rand == 0) {
			magneticLevel += 1;
		} else if (rand == 1) {
			speedLevel += 1;
		} else if (rand == 2) {
			healthLevel += 1;
		} else if (rand == 3) {
			regenLevel += 1;
		} else if (rand == 4) {
			armorLevel += 1;
		} else if (rand == 5) {
			shipSlowLevel += 1;
		} else if (rand == 6) {
			shipWeakenLevel += 1;
		}
	}
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
if (wave == 2) {
	asteroidLimits = [4,8];
	bigAsteroidLimits = [2,3];
	superAsteroidLimits = [0,0];
	bossteroidLimits = [0,0];
	megaBossteroidLimits = [0,0];
	gigaBossteroidLimits = [0,0];
	ywdAsteroidLimits = [0,0];
	killedAllTheDinosaursLimits = [0,0];
}
if (wave == 3) {
	asteroidLimits = [6,10];
	bigAsteroidLimits = [3,4];
	superAsteroidLimits = [1,1];
	bossteroidLimits = [0,0];
	megaBossteroidLimits = [0,0];
	gigaBossteroidLimits = [0,0];
	ywdAsteroidLimits = [0,0];
	killedAllTheDinosaursLimits = [0,0];
}
if (wave == 4) {
	asteroidLimits = [8,12];
	bigAsteroidLimits = [4,5];
	superAsteroidLimits = [1,2];
	bossteroidLimits = [0,0];
	megaBossteroidLimits = [0,0];
	gigaBossteroidLimits = [0,0];
	ywdAsteroidLimits = [0,0];
	killedAllTheDinosaursLimits = [0,0];
}
if (wave == 5) {
	asteroidLimits = [10,14];
	bigAsteroidLimits = [5,7];
	superAsteroidLimits = [2,2];
	bossteroidLimits = [0,0];
	megaBossteroidLimits = [0,0];
	gigaBossteroidLimits = [0,0];
	ywdAsteroidLimits = [0,0];
	killedAllTheDinosaursLimits = [0,0];
}

if (waveStart) {
	toSpawn1 = irandom_range(asteroidLimits[0],asteroidLimits[1]);
	toSpawn2 = irandom_range(bigAsteroidLimits[0],bigAsteroidLimits[1]);
	toSpawn3 = irandom_range(superAsteroidLimits[0],superAsteroidLimits[1]);
	toSpawn4 = irandom_range(bossteroidLimits[0],bossteroidLimits[1]);
	toSpawn5 = irandom_range(megaBossteroidLimits[0],megaBossteroidLimits[1]);
	toSpawn6 = irandom_range(gigaBossteroidLimits[0],gigaBossteroidLimits[1]);
	toSpawn7 = irandom_range(ywdAsteroidLimits[0],ywdAsteroidLimits[1]);
	toSpawn8 = irandom_range(killedAllTheDinosaursLimits[0],killedAllTheDinosaursLimits[1]);
	waveStart = false;
	waveSpawning = true;
}

if (waveSpawning) {
	//Weights to spawn
	spawnNothing = 1000;
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
	calculateWeights(r);
	if (spawn1 == 0 and spawn2 == 0 and spawn3 == 0 and spawn4 == 0 and spawn5 == 0 and spawn6 == 0
	and spawn7 == 0 and spawn8 == 0) {
		waveSpawning = false;
	}
}

if (spawning != 0) {
	if (spawning == 1) {
		var _end = array_length_1d(asteroids);
		asteroids[_end] = 
		instance_create_layer(random_range(-10,room_width+10),-50,"Instances",obj_asteroid);
		toSpawn1 -= 1;
		spawning = 0;
	}
	if (spawning == 2) {
		var _end = array_length_1d(asteroids);
		asteroids[_end] = 
		instance_create_layer(random_range(-10,room_width+10),-50,"Instances",obj_bigAsteroid);
		toSpawn2 -= 1;
		spawning = 0;
	}
	if (spawning == 3) {
		var _end = array_length_1d(asteroids);
		asteroids[_end] = 
		instance_create_layer(random_range(-10,room_width+10),-50,"Instances",obj_superAsteroid);
		toSpawn3 -= 1;
		spawning = 0;
	}
	if (spawning == 4) {
		var _end = array_length_1d(asteroids);
		asteroids[_end] = 
		instance_create_layer(random_range(-10,room_width+10),-50,"Instances",obj_bossteroid);
		toSpawn4 -= 1;
		spawning = 0;
	}
	if (spawning == 5) {
		var _end = array_length_1d(asteroids);
		asteroids[_end] = 
		instance_create_layer(random_range(-10,room_width+10),-50,"Instances",obj_megaBossteroid);
		toSpawn5 -= 1;
		spawning = 0;
	}
	if (spawning == 6) {
		var _end = array_length_1d(asteroids);
		asteroids[_end] = 
		instance_create_layer(random_range(-10,room_width+10),-50,"Instances",obj_gigaBossteroid);
		toSpawn6 -= 1;
		spawning = 0;
	}
	if (spawning == 7) {
		var _end = array_length_1d(asteroids);
		asteroids[_end] = 
		instance_create_layer(random_range(-10,room_width+10),-50,"Instances",obj_youWillDieAsteroid);
		toSpawn7 -= 1;
		spawning = 0;
	}
	if (spawning == 8) {
		var _end = array_length_1d(asteroids);
		asteroids[_end] = 
		instance_create_layer(random_range(-10,room_width+10),-50,"Instances",obj_asteroidThatKilledAllTheDinosaurs);
		toSpawn8 -= 1;
		spawning = 0;
	}
}
}