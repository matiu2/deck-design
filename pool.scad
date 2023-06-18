include <pool_vars.scad>

module pool() {
  color("wheat")
		pavers();

	pool_size = [pool_width, pool_length, pool_depth];
	// Underground
	translate([0, 0, -pool_depth]) {
	  // Concrete
		inner_cube = pool_size - [concrete_thickness * 2, concrete_thickness * 2, 00];
		color("aqua")
			difference() {
				  // outer_cube
					cube(pool_size);
					// Inner cube
					translate([concrete_thickness, concrete_thickness, 0.001])
					  cube(inner_cube); 
				}
			// Water
			water = inner_cube - [0,0,-water_top];
			color([0.8,0.9,1,0.9])
					translate([concrete_thickness, concrete_thickness, 0])
					  cube(water); 
	}
}

module water() {
	
}

module pavers() {
	// House side
	cube([paver_width, pool_length, paver_height]);
	// Gate side
	cube([pool_width, paver_width, paver_height]);
	// Garden side
	translate([pool_width - paver_width,0,0])
	 cube([paver_width, pool_length, paver_height]);
	translate([0,pool_length - paver_width,0])
	 cube([pool_width, paver_width, paver_height]);
}
