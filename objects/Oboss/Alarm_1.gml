hp -= 1

//electricitydebuffparticle
{

var _ps = part_system_create();
part_system_draw_order(_ps, true);

//Emitter
var _ptype1 = part_type_create();
part_type_sprite(_ptype1, Sprite12, false, true, true)
part_type_size(_ptype1, 1, 1, 0, 0);
part_type_scale(_ptype1, 1, 1);
part_type_speed(_ptype1, 0, 0.3, 0, 0);
part_type_direction(_ptype1, 0, 360, 0, 0);
part_type_gravity(_ptype1, 0, 270);
part_type_orientation(_ptype1, 0, 360, 0, 8, false);
part_type_colour3(_ptype1, $FFFFFF, $FFFF3D, $FFFFFF);
part_type_alpha3(_ptype1, 1, 1, 0);
part_type_blend(_ptype1, false);
part_type_life(_ptype1, 30, 30);

var _pemit1 = part_emitter_create(_ps);
part_emitter_region(_ps, _pemit1, -10.190376, 10.190376, -21.067413, 21.067413, ps_shape_rectangle, ps_distr_linear);
part_emitter_burst(_ps, _pemit1, _ptype1, 18);

part_system_position(_ps, x, y);
}
	
flash = 3