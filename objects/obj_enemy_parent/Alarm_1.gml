image_blend = c_white;

if (hp <= 0)
{
    instance_destroy();
    with (obj_player){
        xp += 20;
    }
}