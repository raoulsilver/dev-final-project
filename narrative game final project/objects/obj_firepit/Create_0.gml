
if(!audio_is_playing(firepit_sound)) {
	audio_play_sound(firepit_sound, 1, 1);
}


// remapping function for song volume
function remap(value, minimum, maximum, new_minimum, new_maximum) {
    return (((value - minimum) / (maximum - minimum)) * (new_maximum - new_minimum)) + new_minimum;
}