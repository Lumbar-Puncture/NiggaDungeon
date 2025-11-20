if (instance_exists(Hitler) && distance_to_object(Hitler) < distance_to_player)
{
    target_x = Hitler.x;
    target_y = Hitler.y;
}
else
{
    target_x = random_range(xstart - 100, xstart + 100);
    target_y = random_range(ystart - 100, ystart + 100);
}

alarm[0] = 60;