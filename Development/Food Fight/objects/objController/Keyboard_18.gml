/// @description Insert description here
// You can write your code in this editor
if kcp(ord("P")) {
	room_restart()
}
if kcp(ord("O")) {
	room_goto(rmMainMenu)
}
if kcp(ord("L")) {
	room_goto(rmCharSelect)
}
if kcp(ord("I")) and instance_exists(p2) {
	p2.hp = -1
}
if kcp(ord("U")) and instance_exists(p1) {
	p1.hp = -1
}