if(other.hp <= 0)
{
	instance_destroy(other)
}
else 
{
	show_debug_message("tick")
	other.hp -= 1;
}