use <pool.scad>
use <wall.scad>
use <concrete.scad>
use <deck.scad>

include <pool_vars.scad>
include <wall_vars.scad>
include <deck_vars.scad>
include <concrete_vars.scad>

translate([-wall_width, -wall_width, 0])
	back_wall();

translate([back_to_pool, 1.70, 0])
	pool();

translate([-wall_width, -wall_width, 0])
	concrete();

color("DarkKhaki")
	translate([back_to_concrete, 0, -deck_thickness])
	  deck();
