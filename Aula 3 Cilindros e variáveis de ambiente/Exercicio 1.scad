/*
Exercício 1
Crie um octoedro regular com diagonal 20.
*/

//Qualquer secção do octaedro que passe por 4 vertices é um quadrado.

D = 20; //Diagonal do quadrado
for (i = [0,180]){
    rotate([i,0,0])
        cylinder(d1=D, r2=0, h=D/2, $fn=4);
}