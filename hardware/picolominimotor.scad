$fn = 100;
//cube([19.5, 13.6,50]);//Schalter

//cylinder([6.8/2,h=2]);//Poti


module motor()
{
    cylinder(r=20/2, h=17);
    cylinder(r=20/2, h=26);
    
}



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


module motorcase_deckel()
{
    difference()
    {
        union()
        {
            translate([0,0,0]) cylinder(r=50/2+1,h=2, center = true);
            translate([0,0,-2]) cylinder(r=49.9/2,h=3, center = true);   
        }
        translate([0,0,-2.9]) cylinder(r=49/2,h=3, center = true);   
    }

}


module gewicht200g()
{
    translate([0,0,33/2]) cylinder(r=31.5/2, h=33, center=true);
    translate([0,0,33+9/2]) cylinder(r=7/2, h=9, center=true);
}

module gewicht100g()
{
    cylinder(r=25/2, h=26, center=true);
    translate([0,0,26/2+11.5/2]) cylinder(r=7.5/2, h=11.5, center=true);
}

module arm()
{
    difference()
    {
        translate([0,-5.5,-19.5/2])cube([10,54,7.5],center=true);
        translate([0,-27.5,0]) cylinder(r=4.1/2,h=40, center=true);
        translate([0,-27.5,-19.5/2]) rotate([0,90,0]) cylinder(r=2/2,h=40, center=true);
        translate([0,20,0]) rotate([0,90,0])gewicht100g();
    }
    
    translate([0,20,0]) rotate([0,90,0]) difference()
   {
      cylinder(r=27/2, h=28,center=true);
      translate([0,0,1.1])gewicht100g();
   }
}

//translate([0,0,1.5/2+3]) PCB();
translate([0,-35/2,1.5/2]) PCBmount();


//translate([0,-27.5,0]) rotate(a=[0,0,0])  motorcase();
//translate([0,-27.5,-9]) rotate(a=[0,180,0])  motorcase_deckel();

//gewicht200g();
translate([0,0,-14]) rotate([0,180,0]) arm();

