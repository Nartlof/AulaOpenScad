/*
Exercício 2
Crie uma placa retangular de 50mm por 70mm com 2mm de Espessura com furos 
de 5mm de diâmetro em cada um dos cantos a 2mm das bordas;
*/


C=70; //Comprimento
L=50; //Largura
E=2;  //Espessura
D=5;  //Diametro do furo
M=2;  //Margem

difference(){
    cube([C, L, E], center=true);
    for (i=[1, -1]){
        for (j=[1,-1]){
            translate([i*(C/2-D/2-M),j*(L/2-D/2-M),0])
                cylinder(d=D, h=E+1, center=true, $fs=.1);
        }
    }
}