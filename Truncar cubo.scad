angulo_magico=acos(sqrt(3)/3);
%cube(1,center=true);
difference()
{
    
    cube(1,center=true);
angulo_magico=acos(sqrt(3)/3);
//rotate([90-angulo_magico,90-angulo_magico,0])
rotate(a=0, v=[1,1,1])
rotate([-angulo_magico,0,-45]) translate ([0,0,sqrt(3)/2/**2*$t*/])
cylinder(r=2,h=sqrt(3),center=true);
    
}

//Lista de vertices
/*
4 vertices 90-90-90
3 vertices 45-135-45-135|180,120
3 vertices 45-135-45-135|120,180
*/
