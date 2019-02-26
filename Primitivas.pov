//Sistemas de coordenadas
//primitivas 3D


camera
{
 location<0,0,-10>
 look_at<0,0,0>
}


light_source
{

  <0,0,-10>
  color rgb<1,1,1>
}

sphere
{
  <0,0,0>
  1
  pigment
  {
   color rgb<1,1,1>
  }

   translate<5,0,0>
   rotate -10 * frame_number * y

}

