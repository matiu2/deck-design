include <wall_vars.scad>
include <pool_vars.scad>
include <concrete_vars.scad>

module concrete() {
	translate([0, 0, -concrete_thickness]) {
	  color("gray")
		  union() {
				cube([back_to_pool + wall_width, inner_wall_length + wall_width * 2, concrete_thickness]);
				translate([wall_width, wall_width, 0])
					cube([back_to_concrete, gate_edge_to_pool, concrete_thickness]);
			}
	}
}
