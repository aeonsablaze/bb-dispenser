/* This is the first OpenSCAD model I created when learning
the language. */

module pacmans()
{
    difference(){
        union(){
            translate([0,-80,0])sphere(50);
            translate([0,80,0])sphere(50);
        }
        translate([0,0,0]) scale([2,1,0.2]) sphere(80);
    }
};

sphere(10);
rotate([0,0,90]) pacmans();
pacmans();
