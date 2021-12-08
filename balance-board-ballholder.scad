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
[2,2],
[2,-2],
[-2,-2],
[-2,2]
];


module ballHolder()
{
  difference() {
    #cylinder(r=35, h=35);
    #translate([0,0,ballOffset]) sphere(r=ballRadius);



    /* Debug Cutout */
    cube([40,40,40]);
  }
}



ballHolder();
