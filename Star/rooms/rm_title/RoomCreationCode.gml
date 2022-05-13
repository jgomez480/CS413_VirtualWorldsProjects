global.star_array = [];
global.all_stars = [];
global.connected = [];
global.con_index = 0;
global.lines = [];
global.lines_index = 0;
global.furthest_x = 0;
global.closest_x = 0;
global.furthest_y = 0;
global.closest_y = 0;
global.game_active = false;
global.x_pos = [];
global.y_pos = [];
global.x_pos_main = [];
global.y_pos_main = [];

with (inst_star1)
{
    TweenEasyMove(30, 24, 33, 4, 30, 60, EaseOutBounce);
}


with (inst_star2)
{
    TweenEasyMove(46, 26, 30, 24, 30, 60, EaseOutBounce);
}


with (inst_star3)
{
    TweenEasyMove(14, 22, 46, 26, 30, 60, EaseOutBounce);
}

with (inst_star4)
{
    TweenEasyMove(56, 16, 14, 22, 30, 60, EaseOutBounce);
}

with (inst_star5)
{
    TweenEasyMove(33, 4, 56, 16, 30, 60, EaseOutBounce);
}