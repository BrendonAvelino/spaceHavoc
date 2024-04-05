if(pode_piscar) && !instance_exists(obj_nave) {
	//ESCOLHER A FONTE DO TEXTO
	draw_set_font(ft_jogo)
	//ESCOLHER A COR DO TEXTO
	draw_set_color(c_green)
	//FAZER O TEXTO
	draw_text(100, 100, "CLIQUE PARA \nINICIAR")
	//primeiro o X depois o Y
	//  \n PULA LINHA
}

if(pode_piscar && level_start && global.gameStart && instance_exists(obj_inimiga) && instance_exists(obj_inimiga2)){
		draw_set_font(ft_jogo)
		draw_set_color(c_purple)
		draw_text(250, 300, "NÍVEL"+string(global.level))
}

if(instance_exists(obj_nave)){
	draw_set_font(ft_pontos)
	draw_text(400, 100, "PONTOS: "+string(global.pontos))		
}

if(global.pontos >= 10) {
	instance_destroy(obj_inimiga)
	instance_destroy(obj_inimiga2)
	instance_destroy(obj_nave)
	instance_destroy(obj_controle)
	draw_text(300, 100, "VICTORY !!")
	pode_piscar = false
	alarm[0] = -1
}