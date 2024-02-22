if (keyboard_check_pressed(vk_right)) index = ++index % array_length(images);
if (keyboard_check_pressed(vk_left)) index = (--index + array_length(images)) % array_length(images);

shader_set(shd_abberation);
draw_sprite(images[index], 0, 0, 0);
shader_reset();

draw_rectangle_colour(0, 0, 400, 56, c_white, c_white, c_white, c_white, false);
draw_text_colour(32, 12, $"FPS: {fps}", c_black, c_black, c_black, c_black, 1);