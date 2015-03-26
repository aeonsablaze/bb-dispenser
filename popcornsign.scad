/* This is a laser-cuttable outline of a sign fitted to the hood of a
Gold Medal Pop-a-lot 2007 popcorn machine. */

module poppersign(){
    union(){
    difference(){
        union(){
            polygon([[0,0],[07.5,111],[57.5,161],[617.5,161],[667.5,111],[675.5,0]]);
            translate([57.5,111])circle(50);
            translate([617.5,111])circle(50);
            }
        translate([430,-1,0])square([130,92]);
    }
}
}
