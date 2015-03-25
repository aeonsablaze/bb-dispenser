/* A useful adjustable bowl script for arbitrary sized bowls.
Could probably use some optimization. */

rim=100;
thickness=2;

difference(){
translate([0,0,-rim/2])cylinder(rim/2,rim/2,rim/2);
sphere((rim/2)-thickness);
}
