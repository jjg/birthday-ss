DISTANCE_SCALING_FACTOR = 50000000;
SIZE_SCALING_FACTOR = 10000;

/*
Generated with http://ssd.jpl.nasa.gov/horizons.cgi

    Sun
    X = 3.445928995828132E+04 Y =-5.977842930458921E+05 Z =-1.137675170209317E+03

    Mercury
    X = 2.804947516450232E+07 Y =-6.010920649215650E+07 Z =-7.433869064556710E+06

    Venus
    X = 1.081255565633538E+08 Y =-1.061806306006552E+07 Z =-6.378551380944608E+06

    Earth
    X = 4.982939238479244E+07 Y = 1.382169511085975E+08 Z = 6.126610014669597E+03

    Mars
    X =-8.840767546874936E+07 Y =-2.081078978986169E+08 Z =-2.168133984634548E+06

    Jupiter
    X = 4.012961468016061E+08 Y = 6.332450309910216E+08 Z =-1.159657024521962E+07

    Saturn
    X =-9.039260039400640E+08 Y = 1.021983212645124E+09 Z = 1.804472639908135E+07

    Uranus
    X =-2.180321109644558E+09 Y =-1.717095672422973E+09 Z = 2.191471638130832E+07

    Neptune
    X =-1.249308260673955E+09 Y =-4.354968224879044E+09 Z = 1.184551310038505E+08

    Pluto
    X =-4.270028274993162E+09 Y =-9.328475878087844E+08 Z = 1.334912452672853E+09

*/
difference(){
    union(){
        // mounting plate
        translate([0,0,0]){

/*
            // outer ring
            difference(){
                cylinder(r=48, h=2,$fn=75);
                translate([0,0,-1]){
                    cylinder(r=47, h=4,$fn=75);
                }
            }
*/

            // Mercury orbit
            MERCURY_ORBIT_POS = 3.2;
            difference(){
                cylinder(r=MERCURY_ORBIT_POS, h=2, $fn=75);
                translate([0,0,-1]){
                    cylinder(r=MERCURY_ORBIT_POS-1, h=4, $fn=75);
                }
            }

            // Venus orbit
            VENUS_ORBIT_POS = 5;
            difference(){
                cylinder(r=VENUS_ORBIT_POS, h=2, $fn=75);
                translate([0,0,-1]){
                    cylinder(r=VENUS_ORBIT_POS-1, h=4, $fn=75);
                }
            }

            // Earth orbit
            EARTH_ORBIT_POS = 6.5;
            difference(){
                cylinder(r=EARTH_ORBIT_POS, h=2, $fn=75);
                translate([0,0,-1]){
                    cylinder(r=EARTH_ORBIT_POS-1, h=4, $fn=75);
                }
            }

            // Mars orbit
            MARS_ORBIT_POS = 9.7;
            difference(){
                cylinder(r=MARS_ORBIT_POS, h=2, $fn=75);
                translate([0,0,-1]){
                    cylinder(r=MARS_ORBIT_POS-1, h=4, $fn=75);
                }
            }

            // Jupiter orbit
            JUPITER_ORBIT_POS = 25;
            difference(){
                cylinder(r=JUPITER_ORBIT_POS, h=2, $fn=75);
                translate([0,0,-1]){
                    cylinder(r=JUPITER_ORBIT_POS-1, h=4, $fn=75);
                }
            }

            // Saturn orbit
            SATURN_ORBIT_POS = 34;
            difference(){
                cylinder(r=SATURN_ORBIT_POS, h=2, $fn=75);
                translate([0,0,-1]){
                    cylinder(r=SATURN_ORBIT_POS-1, h=4, $fn=75);
                }
            }

            // Uranus orbit
            URANUS_ORBIT_POS = 28.5;
            difference(){
                cylinder(r=URANUS_ORBIT_POS, h=2, $fn=75);
                translate([0,0,-1]){
                    cylinder(r=URANUS_ORBIT_POS-1, h=4, $fn=75);
                }
            }

            // Neptune orbit
            NEPTUNE_ORBIT_POS = 46;
            difference(){
                cylinder(r=NEPTUNE_ORBIT_POS, h=2, $fn=75);
                translate([0,0,-1]){
                    cylinder(r=NEPTUNE_ORBIT_POS-1, h=4, $fn=75);
                }
            }

            // Pluto orbit
            MERCURY_ORBIT_POS = 47.3; 
            difference(){
                cylinder(r=MERCURY_ORBIT_POS, h=2, $fn=75);
                translate([0,0,-1]){
                    cylinder(r=MERCURY_ORBIT_POS-1, h=4, $fn=75);
                }
            }

            // spokes
            itr = 6;
            for(rotz = [0:360/itr:360]){
                rotate(rotz){
                    cube([48,1,3]);
                }
            }
        }

        // Sun
        translate([(3.445928995828132E+04/DISTANCE_SCALING_FACTOR),(-5.977842930458921E+05/DISTANCE_SCALING_FACTOR),0]){
            // the sun is huge, so it has its own scaling factor
            sphere(r=1,h=20,$fn=25);
        }

        // Mercury
        translate([(2.804947516450232E+07/DISTANCE_SCALING_FACTOR)*2,(-6.010920649215650E+07/DISTANCE_SCALING_FACTOR)*2,0]){
            color("silver")
            sphere(r=2440/SIZE_SCALING_FACTOR*4,h=20,$fn=25);
        }

        // Venus
        translate([(1.081255565633538E+08/DISTANCE_SCALING_FACTOR)*2,(-1.061806306006552E+07/DISTANCE_SCALING_FACTOR)*2,0]){
            color("yellow")
            sphere(r=6051.8/SIZE_SCALING_FACTOR*2,h=20,$fn=25);
        }

        // Earth
        translate([(4.982939238479244E+07/DISTANCE_SCALING_FACTOR)*2,(1.382169511085975E+08/DISTANCE_SCALING_FACTOR)*2,0]){
            color("green")
            sphere(r=6371.01/SIZE_SCALING_FACTOR*2,h=20,$fn=25);
        }

        // Mars
        translate([(-8.840767546874936E+07/DISTANCE_SCALING_FACTOR)*2,(-2.081078978986169E+08/DISTANCE_SCALING_FACTOR)*2,0]){
            color("red")
            sphere(r=3389.9/SIZE_SCALING_FACTOR*2,h=20,$fn=25);
        }

        // Jupiter
        translate([(4.012961468016061E+08/DISTANCE_SCALING_FACTOR)*1.5,(6.332450309910216E+08/DISTANCE_SCALING_FACTOR)*1.5,0]){
            color("purple")
            sphere(r=69911/SIZE_SCALING_FACTOR,h=20,$fn=50);
        }

        // Saturn
        translate([(-9.039260039400640E+08/DISTANCE_SCALING_FACTOR)*1.2,(1.021983212645124E+09/DISTANCE_SCALING_FACTOR)*1.2,0]){
            color("pink")
            sphere(r=58232/SIZE_SCALING_FACTOR,h=20,$fn=50);
        }

        // Uranus and Neptune's distance has been tweaked out of scale to fit them on the plate
        // Uranus
        translate([(-2.180321109644558E+09/DISTANCE_SCALING_FACTOR)/2,(-1.717095672422973E+09/DISTANCE_SCALING_FACTOR)/2,0]){
            color("brown")
            sphere(r=25362/SIZE_SCALING_FACTOR,h=20,$fn=25);
        }

        // Neptune
        translate([(-1.249308260673955E+09/DISTANCE_SCALING_FACTOR)/2,(-4.354968224879044E+09/DISTANCE_SCALING_FACTOR)/2,0]){
            color("blue")
            sphere(r=24624/SIZE_SCALING_FACTOR,h=20,$fn=25);
        }

        // Pluto
        translate([(-4.270028274993162E+09/DISTANCE_SCALING_FACTOR)/2,(-9.328475878087844E+08/DISTANCE_SCALING_FACTOR),0]){
            color("orange")
            sphere(r=1195/SIZE_SCALING_FACTOR*4,h=20,$fn=25);
        }
    }
    // mounting plate
    translate([0,0,2]){
            cylinder(r=50, h=5,$fn=75);
    }
}
