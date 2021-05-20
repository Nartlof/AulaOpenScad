RaioDoHelice = 60;
RaioDoCentro = 10;
Altura = 20;
Espessura = 1.5;
NumeroDePas = 10;

ComprimentoPa = RaioDoHelice-RaioDoCentro;
LarguraDaPa = Altura * sqrt(2);

for(i=[1:NumeroDePas]){
    rotate([0,0,i*360/NumeroDePas])
    translate([RaioDoCentro,0,0]){
        cube([Espessura,Altura,Altura],center = true);
        translate([ComprimentoPa/2,0,0])
            rotate([45,0,0])
                cube([ComprimentoPa,LarguraDaPa,Espessura],center=true);
        }
    }
