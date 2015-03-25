/* This is simply a laser-cuttable building platform to attach
a raspberry pi/amp/batterypack to which fits into an old motorola radio. */

lfront=225;
lback=229.5;
depth=76.5;

ldiff=(lback-lfront)/2;


module notch(spin) {
		rotate([0,0,-spin])
		scale([0.1,0.1,0])
		union(){
			translate([-30,0,0])square([30,50]);
			translate([-15,50,0]) circle(15);
	}
}

difference(){
polygon([[0,0],[ldiff,depth],[lfront+ldiff,depth],[lback,0]]);

translate([ldiff+4,depth,0])notch(135);
translate([103,0,0])notch(-45);
translate([lback-18,0,0])notch(0);
translate([lback-69,0,0])notch(0);
translate([lback-18-3,depth,0])notch(180);
translate([lback-69-3,depth,0])notch(180);
}
