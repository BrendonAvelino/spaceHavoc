x = mouse_x
y = mouse_y

if mouse_check_button(mb_left){
	if disparo = 0 {
		a = instance_create_depth(x, y, depth, obj_tiro)
		disparo = 7	
		
	}
}

if disparo > 0{
	disparo--
}

if(global.HP <= 0) {
	instance_destroy()
}