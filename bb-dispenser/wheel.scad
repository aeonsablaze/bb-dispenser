// When laser cutting, material thickness must be [bbsize] or greater.

include <settings.scad>;

module notch(r){
	rotate(r)
	translate([0,gearr-bbsize,0])
	scale([0.1,0.1,1])
		union(){
			union(){
				circle(bbsize*5);
				translate([-bbsize*5,0,0])square(bbsize*10);
			}
			difference(){
				translate([-bbsize*10,bbsize*5,0])square([bbsize*20,bbsize*5]);
				translate([bbsize*10,bbsize*5,0])circle(bbsize*5);
				translate([bbsize*-10,bbsize*5,0])circle(bbsize*5);

			}
		}
}

module notchring() {
	trueskip=skipint+1;
	gearc = (2*PI*gearr);
	gearint = 360/(gearc/bbsize);
	notchcount=round(((360-gearint)/(gearint*2))/trueskip);
	gearremain=360-(notchcount*gearint);
	geargap=gearremain/notchcount;
	for ( q = [0:gearint+geargap:360-geargap] ) {
		notch(q);
	}
}

module axle() {
	truaxle=axlew*2;
	scale([0.1,0.1,1])circle(truaxle*10);
}

module gear() {
	difference() {
		circle(gearr);
		notchring();
		axle();
	}
}

gear();
