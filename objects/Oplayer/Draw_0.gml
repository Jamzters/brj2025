draw_self()

draw_sprite_ext(Sarrow,0,x,y,1,1,mousedir,c_white,arrow_opacity)

draw_text_color(x,y-50,energy,c_black,c_black,c_black,c_black,1)
draw_text_color(x,y-80,x,c_black,c_black,c_black,c_black,1)

if reloading = true
{
	draw_text_color(x,y-100,"reloading",c_black,c_black,c_black,c_black,1)
}