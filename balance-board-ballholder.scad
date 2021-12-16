/* balance-board-ballholder.scad
Author: andimoto@posteo.de
----------------------------
for placing assambled parts and
single parts go to end of this file
*/

$fn = 100;

ballRadius = 62/2;
ballOffset = 3;

holderRadius = 35;
holderHeigth = 35;

wallThickness = 3;

screwRad = 2.1;
screwHeight = 16;
washerRad = 9/2;
screwHeadHeight = 20;

screwHoleXY = 17;
screwHolePlacement = [
[screwHoleXY,screwHoleXY],
[screwHoleXY,-screwHoleXY],
[-screwHoleXY,-screwHoleXY],
[-screwHoleXY,screwHoleXY]
];


module screwCutout()
{
  cylinder(r=screwRad, h=screwHeight, center=false);
  translate([0,0,screwHeight]) cylinder(r=washerRad, h=screwHeadHeight, center=false);
}
/* screwCutout(); */

module ballHolder()
{
  difference() {
    cylinder(r=ballRadius+wallThickness, h=35);
    translate([0,0,ballOffset]) sphere(r=ballRadius);

    for(hole = screwHolePlacement)
    {
      translate([hole[0],hole[1],screwHeight-5]) translate([0,0,holderHeigth]) mirror([0,0,1]) screwCutout();
    }

    /* Debug Cutout */
    /* cube([40,40,40]); */
  }
}


/* #translate([screwHole[0][0],0,holderHeigth]) cylinder(r=2, h=20, center=true); */
ballHolder();
