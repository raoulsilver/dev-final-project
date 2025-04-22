
if(!audio_is_playing(easier_song)) {
	audio_play_sound(easier_song, 1, 1);
}


// remapping function for song volume
function remap(value, minimum, maximum, new_minimum, new_maximum) {
    return (((value - minimum) / (maximum - minimum)) * (new_maximum - new_minimum)) + new_minimum;
}