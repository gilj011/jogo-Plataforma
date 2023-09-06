/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
var  reiniciar,right,left,jump,attack
var chao = place_meeting(x,y+3,o_block)

right = keyboard_check(vk_right)
left = keyboard_check(vk_left)
jump = keyboard_check_pressed(vk_space)
reiniciar = keyboard_check(ord("R"))
velo_h = (right - left)*max_velo_h

if (!chao){
velo_v += GRAVIDADE*massa

}else if(jump){
velo_v = -max_velo_v
}
switch (estado)
{
	case "parado":
	{
		sprite_index = s_player

		if (right || left)
		{
			estado = "movendo"
		}
		if (abs(velo_v) > velo_v){
			estado = "no_ar"
		}
		break
	}
	case "movendo":
	
    {
	sprite_index = s_playerMov
	if(abs(velo_h) < .1){
	estado = "parado"
	}
	break;
	
	}
	case "no_ar":
	{
	if(abs(velo_h) < .1 && abs(velo_v) <= velo_v){
		if(chao){
	estado = "parado"
		}
	}
	
	}
}


if (reiniciar){
room_restart()
}

