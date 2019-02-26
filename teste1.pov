 
 
 #include "colors.inc"
  camera {
    location <0, 3, -6>
    look_at <0, 0, 0>
  }
  light_source { <20, 20, -20> color White }
  plane {
    y, 0
    pigment { checker color White color Black }
  }
  sphere {
    <0, 0, 0> , 1
    pigment {
      gradient x
      color_map {
        [0.0 Blue  ]
        [0.5 Blue  ]
        [0.5 White ]
        [1.0 White ]
      }
      scale .25
    }
    rotate <0, 0, -clock*360>
    translate <-pi, 1, 0>
    translate <2*pi*clock, 0, 0>
  }