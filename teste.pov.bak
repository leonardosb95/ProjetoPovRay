// Earth Sphere rotating
// File by Anthony Grellier
// File called by RotEarth01.ini
// NOTE: Calls for "Earth.png",

global_settings { assumed_gamma 2.2 }

#include "colors.inc"

#declare R = clock;

camera {
   location  <0, 50, -120>
   direction <0, 0,  2>
   up        <0, 1,  0>
   right   <4/3, 0,  0>
   look_at   <0, 0, 0>   
}

sphere { <0, 0, 0>, 25

   pigment {
      image_map {
        png "Earth.png"
        map_type 1
        interpolate 0
        once
      }   
        translate <0, 0, 0>
        rotate y*360*R
   }
        finish{ambient 0.1 diffuse 0.8 specular 0.4}
}

plane { y, -50
   pigment {rgb <0.5, 0.5, 1>}   
   finish {ambient 0.2 diffuse 0.3}
}

light_source {<250,120,-230> colour White}