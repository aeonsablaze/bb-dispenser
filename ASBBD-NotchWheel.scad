//when laser cutting, material thickness must be [bbsize] or greater.

gearr = 10; //Radius of Gear (mm)
bbsize = 1.25; //Size of bb to be dispensed (mm)

module notch(r){
	rotate(r)
	translate([0,gearr-bbsize,0])
	scale([0.1,0.1,1])
		union(){
			circle(bbsize*5);
			translate([-bbsize*5,0,0])square(bbsize*10);
		}
}

module notchring() {
	gearc = (2*PI*gearr);
	gearint = 360/(gearc/bbsize);
	notchcount=round((360-gearint)/(gearint*2));
	gearremain=360-(notchcount*gearint);
	geargap=gearremain/notchcount;
	for ( q = [0:gearint+geargap:360-geargap] ) {
		notch(q);
	}
}

module gear() {
	linear_extrude(bbsize)difference() {
		circle(gearr);
		notchring();
	}
}

gear();
