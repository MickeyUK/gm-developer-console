/// mouse_area_pressed(x1,y1,x2,y2,mb_button)

if (mouse_x >= argument[0] && mouse_y >= argument[1] &&
mouse_x <= argument[2] && mouse_y <= argument[3] &&
mouse_check_button_pressed(argument[4])) {
    return true;
}
