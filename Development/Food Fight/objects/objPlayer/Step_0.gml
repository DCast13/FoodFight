#region Keys
scrControllerAssignment()
#endregion

//character control
CharacterControl()

//animation control
AnimationControl()

//hit manager
HitManager()

//collision
CollisionAndMovement()

if hp <= 0 {
	room_goto(rmMainMenu)
}