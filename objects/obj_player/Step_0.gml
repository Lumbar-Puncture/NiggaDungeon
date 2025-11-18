var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));

move_and_collide(_hor * move_speed, _ver * move_speed, tilemap, undefined, undefined, undefined, move_speed, move_speed);

if (_hor != 0 or _ver != 0)
{
	if (_ver > 0) sprite_index = spr_player_walk_down;
	else if (_ver < 0) sprite_index = spr_player_walk_up;
	else if (_hor > 0) sprite_index = spr_player_walk_right;
	else if (_hor < 0) sprite_index = spr_player_walk_left;
        
    facing = point_direction(0, 0, _hor, _ver);
}
else
{
	if (sprite_index == spr_player_walk_right) sprite_index = spr_player_idle_right;
	else if (sprite_index == spr_player_walk_left) sprite_index = spr_player_idle_left;
	else if (sprite_index == spr_player_walk_up) sprite_index = spr_player_idle_up;
	else if (sprite_index == spr_player_walk_down) sprite_index = spr_player_idle_down;
}

if (attack_cooldown > 0){
    attack_cooldown -= 1;
}
if (attack_cooldown <= 0 && keyboard_check_pressed(vk_space)) {
    var _inst = instance_create_depth(x, y, depth, obj_attack);
    _inst.image_angle = facing;
    _inst.damage *= damage;
    attack_cooldown = attack_cooldown_max;
}

if (xp >= xp_needed){
    xp -= xp_needed;
    level += 1;
    xp_needed = round(xp_needed*1.3);
    
    hp_total += 5;
    hp = hp_total;
}