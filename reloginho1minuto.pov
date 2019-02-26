#declare relogio = clock*360;

camera {
    location <0, 0, -2>
    look_at <0, 0, 0>
    }
    
    light_source {
    <0,0,0>
    color rgb <1,1,1>
    translate <2,0,-2>
    }
           //relogio 
         
cylinder {
<0,0,0> 
<0, 0, 1>  
0.60
pigment {
color rgb <1.6, 4 ,4>
}                  
}
#for (i, 0, 11, 1)
sphere{
<0.25,0,0>
0.042  
pigment {
color rgb <0, 0.75, 1>
}         
translate<0,0.45,0>
rotate(i*30)*z      
}
#end
        
    // ponteiro 
  cylinder {
<0,0,0>
<0, 0.4,0>
0.02
pigment { 
color <0, 1, 1>
}      
rotate <0,0,5>
finish {
phong 1
}      
 #if(frame_number = 60)
   rotate z * -5   
   #end 
   
}    
  
   
cylinder {
<0,0,0>
<0, 0.5,0>
0.009
pigment { 
color <0, 0.8, 1 >
}  
rotate <0,0,0>
finish {
phong 1
}      
rotate -relogio*z
}
     
// pino do ponteiro
sphere {
<0,0,0>
0.08
pigment {
color rgb <0, 0.75, 1>
}                  
finish {
phong 3
}    
rotate -frame_number*z
}      





