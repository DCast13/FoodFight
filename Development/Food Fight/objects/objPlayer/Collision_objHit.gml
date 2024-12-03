if other.owner = self {
	exit
}

hp -= other.dmg
with other {
	instance_destroy()
}