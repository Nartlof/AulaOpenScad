/*
Exercício 3
Arredonde os cantos da placa do exercício anterior mantendo o furo a 2mm 
da borda.
*/

C=70; //Comprimento
L=50; //Largura
E=2;  //Espessura
D=5;  //Diametro do furo
M=3;  //Margem

RF=D/2+M; //Raio de aredondamento (fillet)

difference(){
    union(){
        cube([C-2*RF, L, E], center=true);
        cube([C, L-2*RF, E], center=true);
        for (i=[1, -1]){
            for (j=[1,-1]){
                translate([i*(C/2-D/2-M),j*(L/2-D/2-M),0])
                    cylinder(r=RF, h=E, center=true, $fs=.4);
            }
        }
    }
    for (i=[1, -1]){
        for (j=[1,-1]){
            translate([i*(C/2-D/2-M),j*(L/2-D/2-M),0])
                cylinder(d=D, h=E+1, center=true, $fs=.4);
        }
    }
}