/*
Exercício 4 (Desafio)
Crie uma placa triangular com lado de 50mm, 2mm de espessura, furos 
de 5mm em cada canto, 2mm de margem entre os furos e a borda da placa e
com cantos arredondados.
*/

L=50;   //Lado da placa
D=5;    //Diametro do furo
M=2;    //Margem
E=2;    //Espessura

l=L-2*M-D;          //Lado do triângulo com os vertices no centro dos furos
Rl=l*sqrt(3)/3;     //Raio do circulo que inscreve o triângulo de lado l
Rf=D/2+M;           //Raio de arredondamento (fillet)

difference(){
    union(){
        cylinder(r=Rl,h=E,center=true,$fn=3);  //triangulo base
        for (i=[0:2]){
            rotate([0,0,i*120]){
                translate([-(Rf/2+Rl/2),0,0])
                    cube([Rf,l,E],center=true);     //retangulo anexado a cada lado do triangulo base
                translate([Rl, 0, 0]) 
                    cylinder(r=Rf, h=E, center=true);   //parte redonda de cada canto
            }
        }
    }
    for (i=[0:2]){
        rotate([0,0,i*120]){
            translate([Rl, 0, 0]) 
                cylinder(d=D, h=E+1, center=true);  //Os furos
        }
    }

}