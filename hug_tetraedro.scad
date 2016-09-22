theta = 60;

module rhomb(side){
    lados = [[0,0],[side,0],[side + side*cos(theta), side*sin(theta)],[side*cos(theta), side*sin(theta)]];
    polygon(points=lados,convexity = 1);
}

module  rhomboid(sd,he){
    color([0,1,0])
    linear_extrude(height = he, center = false, convexity = 10, twist = 0, scale = 1.0) rhomb(sd);
}

dd = 25;
*rhomboid(dd, dd);


module hole1(d){
    he = d;
    re = 1.3*d/8;
    bct = [d-d*cos(theta)/2, d*sin(theta)/2, 0];
    translate([d/2,0,d/2]+bct)
    rotate(a = -90, v = [0,1,0]){
    cylinder(h = he, r1 = re, r2 = re, center = true);
        }
}

module hole2(d){
    he = d;
    re = 1.3*d/8;
    bct = [d-d*cos(theta)/2, d*sin(theta)/2, 0];
    translate([d*cos(theta)/2,d*sin(theta)/2,d/2]+bct)
    rotate(a = -30, v = [0,0,1])
    rotate(a = -90, v = [1,0,0])
         color([1,1,1])  
         cylinder(h = he, r1 = re, r2 = re, center = true);
}

module hub1(d){
     difference() {rhomboid(d,dd); hole1(d);}
}

*hub1(dd);

difference() {hub1(dd); hole2(dd);}

//translate([2*dd,0,0]) {difference() {rhomboid(dd,dd); hole1(dd);}}
//hole2(dd);

//difference() {rhomboid(dd,dd); hole2(dd);}
