/// @description Insert description here
// You can write your code in this editor

// Randomize the seed. Comment out for debugging
randomise();

spawn_wave = 1;

alarm[0] = room_speed * wave_time;


// Initialize the starting position
start_north = [room_width/2, room_height/6];
start_west = [room_width/6, room_height/2];
start_east = [room_width/6*5, room_height/2];

start_variables = [start_west, start_north, start_east]

// Variation in starting position, we use randomizer at each wave to determine
start_variation = 100;


// Each wave we get a random start position from 3 possible positions
// I want first 2 waves to be more predictable, but each gameplay must be different
// So we get a random position to exclude from the first 3 waves's calculation
start_exclude = irandom(2);
