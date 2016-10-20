altura1 = 20;

module cono(){cylinder(h=altura1, r1=altura1/4, r2=0, center=true, $fn = 19);}

module bloque(){
    rotate(a = 30, v = [1,0,0]) 
    translate([0,1,10])
    cylinder( h=altura1/2, r1=altura1/4, r2=altura1/4, center=true, $fn = 4);
    }  


module parte_elipse() 
{
    difference()
    {
        intersection()
        {
            cono(); 
           bloque();
        } 
        translate([0,0,11.5])
    cube([9,9,9],center=true);
    }
}

module parte_circulo() {
intersection(){
    cono(); 
    translate([0,0,11.5])
    cube([9,9,9],center=true);
    } 

}


module parte_parabola() {
intersection(){
    cono(); 
    translate([0,7,-3.4])
    cube([9,9,14],center=true);
    } 

}

module parte_hiperbola() {
    difference()
    {
intersection(){
    cono();
    rotate(a = -10.8, v = [1,0,0])
    translate([1,-3.3+8,-3.4])
    cube([12,9,20.9],center=true);
    } 
translate([0,7,-3.4]) cube([9,9,14],center=true);
}}

module parte_abstracta() {
   
difference(){
    cono();
    rotate(a = -10.8, v = [1,0,0])
    translate([1,-3.3+8,-3.4])
    cube([12,9,20.9],center=true);
     bloque();
    } 

}


color("yellow")
translate([0,0,0.8]) parte_circulo();

color("brown")
translate([0,0,0.6]) 
parte_elipse();

color("green")
translate([0,0.6,0])
parte_parabola();

parte_hiperbola();

translate([0,-0.6,0])
parte_abstracta();

