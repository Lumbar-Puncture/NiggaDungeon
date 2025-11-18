var w = 200;
var h = 20;
var xx = 20;
var yy = 20;
draw_set_color(c_black);
draw_rectangle(xx-2, yy-2, xx+w+2, yy+h+2, false);
draw_set_color(c_red);
draw_rectangle(xx, yy, xx + (hp/hp_total)*w, yy + h, false);


var hh = 12;
var yyy =46;
var pct = 1 - (attack_cooldown / attack_cooldown_max);
draw_set_color(c_black);
draw_rectangle(xx-2, yyy-2, xx+w+2, yyy+hh+2, false);
draw_set_color(c_yellow);
draw_rectangle(xx, yyy, xx + pct*w, yyy + hh, false);


var hhh = 6;
var yyyy = 8;
var pctt = xp / xp_needed;
draw_set_color(c_black);
draw_rectangle(xx-2, yyyy-2, xx+w+2, yyyy+hhh+2, false);
draw_set_color(c_blue);
draw_rectangle(xx, yyyy, xx + pctt*w, yyyy + hhh, false);