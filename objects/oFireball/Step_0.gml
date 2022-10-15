/// @description Insert description here
// You can write your code in this editor

if (image_index == 1) {
	x += 5;
} else {
	x -= 5;
}

if (x > room_width || x < 0) {
	instance_destroy(object_index);
}