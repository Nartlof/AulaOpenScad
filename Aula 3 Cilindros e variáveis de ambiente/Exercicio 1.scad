/*
Exercício 1
Crie um octoedro regular com lado 10.
*/

L = 10;
D = 10*sqrt(2);
rotate([0,0,45])
for (i = [0,180]){
    rotate([i,0,0])
        cylinder(r1=D, r2=0, h=D, $fn=4);
}