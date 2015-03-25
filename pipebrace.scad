/*This was a (failed) attempt to save an old e-Pipe vaporizer of mine by
adding a 3d printable/removable brace to the outside. It failed because
the pipe proceeded to break further while I was still designing this.
It is incomplete but I keep it around incase it becomes useful someday. :) */

thickness=5;//Thickness of bracket wall
gap=5; // gap between parts
bracel=50;//length of bottom brace
bracketl=100;//length of bracket body

stemr=10;//Radius of Pipe Stem
stemd=stemr*2;
tipw=20;
tipt=5;

module brace(){
	difference(){
		cylinder(bracel,stemd+thickness,stemd+thickness);
		translate([0,0,-1])cylinder(bracel+2,stemd,stemd);
	}
}

module bracketbody(){
	translate([0,0,bracel+gap]) 
	difference(){
		cylinder(bracketl,stemd+thickness,stemd+thickness);
		translate([0,0,-1])cylinder(bracketl+2,stemd,stemd);
		translate([-(gap/2),-stemd*1.5,-1])cube([stemd*3,stemd*3,bracketl+2]);
	}
}

module brackettip(){
	tiplength=50;
	tiphalf=tiplength/2;
	translate([0,0,bracel+bracketl+gap*2])
	difference(){
		union(){
			hull() {
				cylinder(tiphalf,stemd+thickness,stemd+thickness);
				translate([0,0,tiphalf+10])scale([0.25,1,1])cylinder(1,stemd+thicknes,stemd+thickness);
			}
		translate([0,0,tiphalf+10])scale([0.25,1,1])cylinder(tiphalf,stemd+thickness,stemd);
		}
		union(){
			hull() {
				translate([0,0,-1])cylinder(tiphalf+1,stemd,stemd);
				translate([0,0,tiphalf+10])scale([0.25,1,1])cylinder(1,stemd,stemd);
			}
		translate([0,0,tiphalf+10])scale([0.25,1,1])cylinder(tiphalf+1,stemd,stemd);
		}
		translate([-(gap/2),-stemd*1.5,-1])cube([stemd*3,stemd*3,tiplength*2]);
	}
}


brace();
bracketbody();
rotate(180)bracketbody();
brackettip();
rotate(180)brackettip();
