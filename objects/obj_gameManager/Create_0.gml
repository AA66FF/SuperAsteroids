wave = 0;
waveStart = false;
waveSpawning = false;
win = false;
spawning = 0;
toSpawn1 = 0;
toSpawn2 = 0;
toSpawn3 = 0;
toSpawn4 = 0;
toSpawn5 = 0;
toSpawn6 = 0;
toSpawn7 = 0;
toSpawn8 = 0;
asteroidLimits = [2,5];
bigAsteroidLimits = [1,2];
superAsteroidLimits = [0,0];
bossteroidLimits = [0,0];
megaBossteroidLimits = [0,0];
gigaBossteroidLimits = [0,0];
ywdAsteroidLimits = [0,0];
killedAllTheDinosaursLimits = [0,0];
magneticLevel = 0;
speedLevel = 0;
healthLevel = 0;
regenLevel = 0;
armorLevel = 0;
shipSlowLevel = 0;
shipWeakenLevel = 0;
credits = 0;

asteroidsDestroyed = 0;
creditsGained = 0;
lasersShot = 0;
lasersHit = 0;
damageDealt = 0;
damageTaken = 0;

currentRoom = rm_space;
shipPos = [0,0];
shipVel = [0,0];

asteroids = [];

instance_create_layer(0,0,"Instances",obj_hudManager);
