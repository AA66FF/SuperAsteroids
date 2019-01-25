instance_destroy(other,true);
redness = 240-rednessFloor;
hp -= other.damage;
obj_gameManager.damageDealt += other.damage;
obj_gameManager.lasersHit += 1;
