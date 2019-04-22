$fn = 100;
//cube([19.5, 13.6,50]);//Schalter

//cylinder([6.8/2,h=2]);//Poti

module PCBmount()
{
    difference()
    {
        union()
        {
            cube([50,32+35,1.5], center=true);
            translate([-50/2+3.4/2+1.2,-32/2+35/2+3.4/2+1.5,0])
           {
               translate([0,0,1.5]) cylinder(r=5/2, h=3, center=true);
               translate([44,0,1.5]) cylinder(r=5/2, h=3, center=true);
               translate([44,26,1.5]) cylinder(r=5/2, h=3, center=true);
               translate([0,26,1.5]) cylinder(r=5/2, h=3, center=true);
           }
        }
        
        
        
            translate([-50/2+3.4/2+1.2,-32/2+35/2+3.4/2+1.5,0])
       {
           cylinder(r=2.5/2, h=100, center=true);
           translate([44,0]) cylinder(r=2.5/2, h=100, center=true);
           translate([44,26]) cylinder(r=2.5/2, h=100, center=true);
           translate([0,26]) cylinder(r=2.5/2, h=100, center=true);
       }
       translate([0,-10,1]) rotate(a=[0,0,0]) motormount();

    }
}

module PCB()
{
    color([0.5,0.5,0.5])
    difference()
    {
       cube([50,32,1.5], center=true); 
        
        translate([-50/2+3.4/2+1.2,-32/2+3.4/2+1.5])
       {
           cylinder(r=3.4/2, h=100, center=true);
           translate([44,0]) cylinder(r=3.4/2, h=100, center=true);
           translate([44,26]) cylinder(r=3.4/2, h=100, center=true);
           translate([0,26]) cylinder(r=3.4/2, h=100, center=true);
       }
    }
}




module motormount()
{

        cylinder(r=7.1/2,h=40, center=true);
        translate([15/2,0,0]) cylinder(r=2/2,h=40, center=true);
        translate([-15/2,0,0]) cylinder(r=2/2,h=40, center=true);
        

}

module motorcase()
{
    difference()
    {
        union()
        {
            translate([0,0,-4]) cylinder(r=50/2+1,h=8, center = true);

        }
        cylinder(r=7.1/2,h=40, center=true);
        translate([15/2,0,0]) cylinder(r=2/2,h=40, center=true);
        translate([-15/2,0,0]) cylinder(r=2/2,h=40, center=true);
        translate([0,0,-4.5]) cylinder(r=50/2,h=8, center = true);
        
    }
}


translate([0,0,1.5/2+3]) PCB();
translate([0,-35/2,1.5/2]) PCBmount();


translate([0,-27.5,0]) rotate(a=[0,0,0])  motorcase();


