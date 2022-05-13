/// @description Take Hit

// Make image blink
TweenEasyFade(0, 1, 0, 15, EaseOutCubic);
id.health--;
if (id.health <= 0) {
	instance_destroy(id);
}