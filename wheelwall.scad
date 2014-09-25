//when laser cutting, material thickness must be [bbsize] or greater.

gearr = 10; //Radius of Gear (mm)
axlew = 1; //Width of axle (mm)

module axle() {
	truaxle=axlew*2;
	scale([0.1,0.1,1])circle(truaxle*10);
}

module gearwalls() {
	difference() {
		circle(gearr);
		axle();
	}
}

gearwalls();
