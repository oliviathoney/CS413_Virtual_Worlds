if ( (x <= 133) | (x >=  875) ){
	xspeed = (-1)*xspeed;
} 

if ( (y <= 0) | (y >= room_height) ) {
	yspeed = (-1)*yspeed;
}

x += xspeed;
y += yspeed;
