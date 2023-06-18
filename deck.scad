include <deck_vars.scad>

module deck() {
  // Gate side
	cube([concrete_to_new_end, gate_edge_to_pool, deck_thickness]);
	// Far side
	translate([con_pool, gate_edge_to_pool, 0])
		cube([extra_deck_width, pool_length, deck_thickness]);
}