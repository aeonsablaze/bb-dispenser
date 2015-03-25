include <settings.scad>;

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
