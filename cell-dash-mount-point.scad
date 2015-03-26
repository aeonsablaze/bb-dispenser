/* This is meant to be attached to the edge of a dashboard to allow
a "vent" cell phone holder to be attached there instead of to an air
conditioning vent (useful for cars such as mine with inconveniently
placed vents. */

difference(){
    linear_extrude(15)polygon([[0,0],[50,0],[40,10],[10,10]]);
    union(){
        translate([19,3,-1])cube([12,3,20]);
        translate([19,3,10])cube([12,10,9]);
        translate([8,3,-1])cube([34,3,5]);
        translate([19,4,-1])cube([12,2,3]);
    }
}
