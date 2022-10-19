 /// @description Insert description here
// You can write your code in this editor

if (image_index == 0) {
	x += 8;
} else {
	x -= 8;
}

if (x > room_width || x < 0) {
	instance_destroy(object_index);
}