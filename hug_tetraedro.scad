theta = 60;

module rhomb(side){
    lados = [[0,0],[side,0],[side + side*cos(theta), side*sin(theta)],[side*cos(theta), side*sin(theta)]];
    polygon(points=lados,convexity = 1);
}
 

module  rhomboid(sd,he){
    color([0,1,0])
    linear_extrude(height = he, center = false, convexity = 10, twist = 0, scale = 1.0) rhomb(sd);
}
*rhomboid(5,10);
h11 = 10;
h22 = 7;
re = 8;
ri = 6;

cylinder(h = h11, r1 = re, r2 = re, center = true);
