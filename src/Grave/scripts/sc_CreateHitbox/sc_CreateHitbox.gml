///@arg x
///@arg y
///@arg creator
///@arg sprite
///@arg knockback
///@arg lifespan
///@arg damage
///@arg xscale
var _x = argument0;
var _y = argument1;
var _creator = argument2;
var _sprite = argument3;
var _knockback = argument4;
var _lifespan = argument5;
var _damage = argument6;
var _xscale = argument7;

var hitbox = instance_create_layer(_x,_y,"Instances",o_hitbox);

hitbox.sprite_index = _sprite;
hitbox.creator = _creator;
hitbox.knockback = _knockback;
hitbox.alarm[0] = _lifespan;
hitbox.damage = _damage;
hitbox.image_xscale = _xscale;