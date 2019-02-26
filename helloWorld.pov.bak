// POV-Ray version 3.6/3.7 scenery file "sky03.pov"
// author: Friedrich A. Lohmueller, 2005, update Dec-2009 / Jan-2011 / Nov-2013
// homepage: http://www.f-lohmueller.de

//-----------------------------------------------------------------------------
#version 3.7; // 3.6;
global_settings{ assumed_gamma 1.0 }
#default{ finish{ ambient 0.1 diffuse 0.9 }}
//-----------------------------------------------------------------------------

#include "colors.inc"
#include "textures.inc"
#include "skies.inc"

// camera ------------------------------------------------------------
#declare Camera_0 = camera{ angle 80 
                            right    x*image_width/image_height
                            location  <0.0 , 1.0 ,-3.0>
                            look_at   <0.0 , 2.0 , 0.0>}
camera{Camera_0}
// sun ---------------------------------------------------------------
light_source{<1500,2500,-2500> color rgb<1,1,1> }
// sky ---------------------------------------------------------------
plane{<0,1,0>,1 hollow  // 
      
        texture{ pigment {color rgb<0.1,0.3,0.75>*0.7}
                 #if (version = 3.7 )  finish {emission 1 diffuse 0}
                 #else                 finish { ambient 1 diffuse 0}
                 #end 
               } // end texture 1

        texture{ pigment{ bozo turbulence 0.75
                          octaves 6  omega 0.7 lambda 2 
                          color_map {
                          [0.0  color rgb <0.95, 0.95, 0.95> ]
                          [0.05  color rgb <1, 1, 1>*1.25 ]
                          [0.15 color rgb <0.85, 0.85, 0.85> ]
                          [0.55 color rgbt <1, 1, 1, 1>*1 ]
                          [1.0 color rgbt <1, 1, 1, 1>*1 ]
                          } // end color_map 
                         translate< 3, 0,-1>
                         scale <0.3, 0.4, 0.2>*3
                        } // end pigment
                 #if (version = 3.7 )  finish {emission 1 diffuse 0}
                 #else                 finish { ambient 1 diffuse 0}
                 #end 
               } // end texture 2
       scale 10000
     } //-------------------------------------------------------------
 
// ground fog at the horizon -----------------------------------------
fog{ fog_type   2
     distance   1000
     color      rgb<1,1,1>*0.9
     fog_offset 0.1
     fog_alt    20
     turbulence 1.8
   } //---------------------------------------------------------------
 
// ground ------------------------------------------------------------
plane { <0,1,0>, 0 
        texture{ pigment{color rgb<0.35,0.65,0.0>*0.8}
                 normal {bumps 0.75 scale 0.015}
                 finish {ambient 0.1 diffuse 0.8}
               } // end of texture
      } // end of plane
//--------------------------------------------------------------------

//--------------------------------------------------------------------------
//---------------------------- objects in scene ----------------------------
//--------------------------------------------------------------------------
// a mirror sphere !!!!  
sphere{ 
    <0,1,0>//centro 
    0.4 //radio 
    scale <2,2,2> 
    rotate<0,20,0>
    translate <0,0.5,0>
pigment
{
    image_map
    {
    png "2.png"
    map_type 1
    }        
}
                               
texture{
		T_Cloud2
		scale 0.25
		rotate frame_number * z *90
	}
  
  
  
 
  
  
      }
//-------------------------------------------------------------------------- 




    