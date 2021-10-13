var collider_tiles = layer_tilemap_get_id("tilemap_colliders");

var hit = 0;

hit += tilemap_get_at_pixel(collider_tiles, bbox_left, bbox_top);
hit += tilemap_get_at_pixel(collider_tiles, bbox_left, bbox_bottom);
hit += tilemap_get_at_pixel(collider_tiles, bbox_right, bbox_top);
hit += tilemap_get_at_pixel(collider_tiles, bbox_right, bbox_bottom);
	
if (hit > 0) {
	instance_destroy(id);
}