difference(){
    union(){
        cube([20,20,10]);
        translate([5,5,0]) cube([10,10,20]);
    }
    translate([-1,10,10])
        rotate([0,90,0])
            cylinder(d=8,h=22);
}