$l = 50; // lenght of vixen dovetail

$id = 14.20; // laserpointer
$od = $id + 6; // outer

$fn = 100;

$w = 43; // vixen dovetail
$h = 15; // vixen dovetail
$a = 75; // vixen dovetail

difference() {
  union() {  
    translate([-$w/2,-$l/2,0])
      cube([$w,$l,15]);
    translate([0,$l/2,$od/2])
      rotate([90,0,0])
        cylinder($l,$od/2,$od/2);
  }

  translate([$w/2,-$l/2-1,0])
    rotate([0,-90+$a,0])
      cube([10,$l+2,20]);

  translate([0,0,0])
    rotate([0,0,180])
      translate([$w/2,-$l/2-1,0])
        rotate([0,-90+$a,0])
          cube([10,$l+2,20]);

  translate([0,$l/2+1,$od/2])
    rotate([90,0,0])
      cylinder($l+2,$id/2,$id/2);
}