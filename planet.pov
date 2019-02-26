#include "colors.inc"
#include "skies.inc"





camera{
	location 2
	look_at 0
}
light_source{
	z*100
	color rgb 1
}
sphere{
	0, 1
	pigment{
		image_map{
			png "2.png"
			map_type 1
		}
	}
	rotate y*80
	texture{
		T_Cloud2
		scale 0.25
		rotate z*90
	}
}