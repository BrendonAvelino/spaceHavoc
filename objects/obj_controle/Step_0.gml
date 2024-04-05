if(mouse_check_button(mb_left) && !instance_exists(obj_nave)) {
	instance_create_layer(10, 10, layer, obj_nave)
	global.gameStart = true
	level_start = true
	pode_criar_inimigo = true
}

if(level_start && !instance_exists(obj_inimiga) && !instance_exists(obj_inimiga2)){
	delay_start -= 1
	
	if(delay_start <= 0){
		inimigo_liberado= true
		delay_start	= delay
		pode_criar_inimigo = true
	}
}

if(pode_criar_inimigo && global.gameStart) {
	var repetir = 2 * global.level
	repeat(repetir){
		criar_inimigo()
	}
	pode_criar_inimigo = false
	inimigo_liberado = false
	global.level++
}

//criar_inimigo()
if(keyboard_check(ord("R"))){
	room_restart()
}