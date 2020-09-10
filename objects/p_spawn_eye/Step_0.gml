part_type_color3(global.p_type_eye,global.eyeColor1,global.eyeColor2,global.eyeColor3);
part_emitter_region(global.p_system_eye,global.p_emitter_eye,x,x,y,y,ps_shape_ellipse,ps_distr_linear);
part_emitter_burst(global.p_system_eye,global.p_emitter_eye,global.p_type_eye,4);