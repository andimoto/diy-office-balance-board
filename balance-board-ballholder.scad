/* balance-board-ballholder.scad
Author: andimoto@posteo.de
----------------------------
for placing assambled parts and
single parts go to end of this file
*/

$fn = 100;

ballRadius = 30;
ballOffset = 3;

holderRadius = 35;
holderHeigth = 35;

screwHole = [
[15,15],
[15,-15],
[-15,-15],
[-15,15]
];


module ballHolder()
{
  difference() {
    #cylinder(r=35, h=35);
    #translate([0,0,ballOffset]) sphere(r=ballRadius);

    for(hole = screwHole)
    {
      %translate([hole[0],hole[1],holderHeigth]) cylinder(r=2, h=30, center=true);
    }

    /* Debug Cutout */
    cube([40,40,40]);
  }
}


/* #translate([screwHole[0][0],0,holderHeigth]) cylinder(r=2, h=20, center=true); */
ballHolder();
