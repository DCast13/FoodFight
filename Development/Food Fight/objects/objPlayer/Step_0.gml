#region Keys
right = (controller == CONT_P1) ? ord("D") : vk_right
left = (controller == CONT_P1) ? ord("A") : vk_left
up = (controller == CONT_P1) ? ord("W") : vk_up
down = (controller == CONT_P1) ? ord("S") : vk_down
atkL = (controller == CONT_P1) ? ord("R") : ord("M")
atkM = (controller == CONT_P1) ? ord("T") : ord(",")
atkH = (controller == CONT_P1) ? ord("Y") : ord(".")
#endregion

//character control
CharacterControl()

//animation control
AnimationControl()

//collision
CollisionAndMovements()