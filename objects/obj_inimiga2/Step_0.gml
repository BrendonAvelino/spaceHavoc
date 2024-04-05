if HP <= 0 {
	instance_destroy()
	global.pontos += 1
}

x += velocidade * xdirecao
// y += velocidade

if(stop && y > xstop) {
	delay_stop -= 0.5
	if(delay_stop <= 0) {
		stop = false
	}
	x += ( velocidade * xdirecao)/3
} else {
	y += velocidade
}


delay -= 0.1

if(delay <= 0) {
	xdirecao = irandom_range(1, -1)
	delay = direcao
}

if(y >= 920) {
	y = -20
}

if (x >= 700) {
	x = 1
}

if(x <= 0) {
	x = 700
}