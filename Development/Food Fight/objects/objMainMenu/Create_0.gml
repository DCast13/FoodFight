window_set_fullscreen(true);

// Menu options
menu = ["P1 vs P2", "Controls", "Exit"];
currIndex = 0;

// Global variables
global.enemyType = CONT_P2;

audio_stop_all()

audio_play_sound(MenuSong, 1, 1)