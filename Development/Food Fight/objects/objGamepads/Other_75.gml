//game maker website code
if (async_load[? "event_type"] == "gamepad discovered"){
    var _pad = async_load[? "pad_index"];
    array_push(global.gamepads, _pad);
}
else if (async_load[? "event_type"] == "gamepad lost"){
    var _pad = async_load[? "pad_index"];
    var _index = array_get_index(global.gamepads, _pad);
    array_delete(global.gamepads, _index, 1);
}