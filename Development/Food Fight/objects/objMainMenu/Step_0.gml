// Check for menu navigation inputs
if kcp(ord("W")) {
    currIndex--;
} else if kcp(ord("S")) {
    currIndex++;
}

// Clamp currIndex to valid range
currIndex = clamp(currIndex, 0, array_length_1d(menu) - 1);

// Handle selection when 'R' is pressed
if kcp(ord("R")) {
    switch (currIndex) {
        case 0: // PvP
            room_goto(rmCharSelect); // Redirect to character selection
        break;
        
        case 1: // Controls
            room_goto(rmControls); // Redirect to controls screen
        break;
        
        case 2: // Exit
            game_end(); // End the game
        break;
    }
}
