/*
Exercício 1
Crie um octoedro regular com lado 10.
*/

//Qualquer secção do octaedro que passe por 4 vertices é um quadrado.

L = 10; //lado do quadrado
D = L*sqrt(2); //Diagonal do quadrado
rotate([0,0,45])
for (i = [0,180]){
    rotate([i,0,0])
        cylinder(d1=D, r2=0, h=D, $fn=4);
}