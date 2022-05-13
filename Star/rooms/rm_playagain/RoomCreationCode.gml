
global.game_active = false;

with (inst_playAgain)
{
    TweenEasyMove(17, -32, 17, 0, 30, 60, EaseOutBounce);
}


with (inst_play)
{
    TweenEasyMove(1, 32, 1, 19, 30, 60, EaseOutBounce);
}

with (inst_notPlay)
{
    TweenEasyMove(49, 34, 50, 20, 30, 60, EaseOutBounce);
}