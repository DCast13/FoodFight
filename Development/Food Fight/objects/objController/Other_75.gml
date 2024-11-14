//game maker code
if (async_load[? "event_type"] == "gamepad discovered"){
    var _pad = async_load[? "pad_index"];
    array_push(gamepads, _pad);
}
else if (async_load[? "event_type"] == "gamepad lost"){
    var _pad = async_load[? "pad_index"];
    var _index = array_get_index(gamepads, _pad);
    array_delete(gamepads, _index, 1);
}

// If two controllers are connected then they can be used
if(array_length(gamepads) == 2){
		objPlayer0.controllerIndex = gamepads[0];
	

		objPlayer1.controllerIndex = gamepads[1];
	
}