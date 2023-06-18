include <concrete_vars.scad>
include <pool_vars.scad>
include <wall.scad>

// From the end of the concrete, going away from the house to the start of the white shed thing
concrete_to_shed = 4.084;
// From the house side of the shed, to the bricks on the ground past the end of the current deck
shed_to_bricks = 1.9; 
// How much further past the bricks we'll build
extra = 1;
concrete_to_new_end = concrete_to_shed + shed_to_bricks + extra;

// Extra deck (after the pool)
extra_deck_width = concrete_to_new_end + back_to_concrete - (back_to_pool + pool_width);

// Start of concrete to the edge of the pool, going away from the house
con_pool = back_to_pool + pool_width - back_to_concrete;

// how thick is a plank of wood
deck_thickness = 0.03;

