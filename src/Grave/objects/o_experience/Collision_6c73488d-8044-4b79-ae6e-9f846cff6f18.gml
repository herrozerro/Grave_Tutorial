/// @description Insert description here
// You can write your code in this editor
if (!instance_exists(other)) exit;

with(other) {
	experience += 1;
	if(experience >= maxExperience) {
		level += 1;
		experience -= maxExperience;
		maxExperience += maxExperience;
		
		maxHp += 5;
		hp += maxHp/2
		strength += 5;
		
		hp = min(hp, maxHp);
		
	}
}

instance_destroy();