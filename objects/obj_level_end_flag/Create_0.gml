/// @description 

player1Check = false;
player2Check = false;

if(image_angle == -180 || image_angle == 180)
{
	TweenFire(id, EaseInOutQuad, TWEEN_MODE_PATROL, false, 0, 60, "image_yscale", 1, 1.5);
	TweenFire(id, EaseInOutQuad, TWEEN_MODE_PATROL, false, 0, 60, "image_xscale", 1, 1.5);
	TweenFire(id, EaseInOutQuad, TWEEN_MODE_PATROL, false, 0, 30, "image_angle", -150, -210);
} else {
	TweenFire(id, EaseInOutQuad, TWEEN_MODE_PATROL, false, 0, 60, "image_yscale", 1, 1.5);
	TweenFire(id, EaseInOutQuad, TWEEN_MODE_PATROL, false, 0, 60, "image_xscale", 1, 1.5);
	TweenFire(id, EaseInOutQuad, TWEEN_MODE_PATROL, false, 0, 30, "image_angle", 30, -30);
}
