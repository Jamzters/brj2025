if global.wheelui = true
{
draw_self()

draw_set_halign(fa_center)
draw_set_font(pixelfont)
draw_set_color(c_black)

draw_text_transformed(x,y+30,"Section:",0.5,0.5,0)

draw_text_transformed(x,y+43,global.selection,0.5,0.5,0)
}
else{}