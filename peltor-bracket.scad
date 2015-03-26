/* This a replacement piece for a pair of Peltor earmuffs which one
of the (brackets? I dunno. The little slidey right angle bits.) on
the side had broken. Works perfectly. Could be made to look a bit
more like the piece it is replacing though.*/

gap=4;

rotate([-90,0,0])
union() {
    difference() {
        union() {
            translate([7,2.5,35])
            rotate([90,0,0])
            cylinder(3,7,7);
            cylinder(47,2.5,2.5);
        }
        translate([0,0,-1])cylinder(49,1.5,1.5);
        translate([7,3.5,35])
        rotate([90,0,0])
        union() {
        cylinder(8.5,4.5,4.5);
        translate([0,-gap/2,0])cube([10,gap,10]);
        }
    }

}
