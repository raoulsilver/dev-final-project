depth = -y;

var volume = remap(distance_to_object(obj_player), 0, 600, 0.6, 0);
audio_sound_gain(firepit_sound, volume, 0);