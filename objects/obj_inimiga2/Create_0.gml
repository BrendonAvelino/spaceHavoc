HP = 3

velocidade = random_range(1.5, 2)
xdirecao = irandom_range(1, -1)
direcao = room_speed * random_range(0.4, 1.2)
delay = direcao 

stop = true
xstop = choose(100, 200, 300, 400, 500, 600)
delay_stop = room_speed * choose(3, 4, 5)

alarm[0] = room_speed * random_range(1,3)
