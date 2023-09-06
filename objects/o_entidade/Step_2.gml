/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
var _velo_h = sign(velo_h)
var _velo_v = sign(velo_v)
repeat(abs(velo_h))
{
if(place_meeting(x+_velo_h,y,o_block))
{
velo_h = 0;
break;
}
x +=_velo_h
}



repeat(abs(velo_v))
{
	if(place_meeting(x, y+1+ _velo_v, o_block))
	{
		velo_v = 0;
		break;
	}		
	y += _velo_v
}
