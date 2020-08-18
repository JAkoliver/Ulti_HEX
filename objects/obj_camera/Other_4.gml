global.cameraX = 0;
global.cameraY = 0;
target = obj_player;

cameraWidth = 3840;
cameraHeight = 2160;

bg0 = layer_get_id("Background_0");
bg1 = layer_get_id("Background_1");
bg2 = layer_get_id("Background_2");

view_enabled = true;
view_visible[0] = true;

camera_set_view_size(view_camera[0], cameraWidth, cameraHeight);

//Display
displayScale = 1;
displayWidth = cameraWidth * displayScale;
displayHeight = cameraHeight * displayScale;

window_set_size(displayWidth, displayHeight);
surface_resize(application_surface, displayWidth, displayHeight);

//GUI
display_set_gui_size(cameraWidth, cameraHeight);

alarm[0] = 1;