var lyr_instances = layer_get_id("Instances");

var inst_ghost = instance_create_layer(room_width+sprite_get_width(spr_ghost_large), 
									room_height+sprite_get_height(spr_ghost_large), 
									lyr_instances, 
									obj_ghost_large);
