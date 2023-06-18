include <wall_vars.scad>

module wall(length) {
	  cube([wall_width, length, wall_height]);
}

module back_wall() {
  union() {
		// back wall
		back_length = inner_wall_length + wall_width * 2;
		wall(back_length);

		// Right wall (gate side)
	  translate([wall_width, wall_width, 0])
			rotate([0,0,-90])
				wall(1.790);

		// Left wall (shower side)
		translate([wall_width,back_length,0])
			rotate([0,0,-90])
			  wall(1.5);
	}
}
