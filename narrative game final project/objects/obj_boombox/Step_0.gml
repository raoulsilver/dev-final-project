depth = -y;

var volume = remap(distance_to_object(obj_player), 0, 600, 1, 0);
audio_sound_gain(easier_song, volume, 0);