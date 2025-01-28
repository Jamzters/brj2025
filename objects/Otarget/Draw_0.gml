draw_self();

if (flash > 0)
{
	flash--;
shader_set(Sh_white);
draw_self();
shader_reset();
}

draw_text(x,y-30,hp)