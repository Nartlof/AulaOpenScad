/*
Exercicio 3:
Usando os comandos aprendidos até agora, crie uma forma geométrica
composta de 6 caixas 20x20x20 dispostas ao redor de um circulo de
de raio 30 de modo que uma diagonal esteja alinhada com o centro
do círculo.
*/

module caixa(A=20,L=20,C=20,E=2) {
    //base
    cube([L,C,E]);

    //lateral direita
    for (i = [0, 1]) {
        //Laterais
        translate(i * [L - E,0,0]) cube([E,C,A]);
        //frente e fundo
        translate(i * [0,C - E,0]) cube([L,E,A]);
    }
}

N=6;

for (i = [1:N]){
    rotate(i* [0,0,360/N])
        translate([30,0,0])
            rotate([0,0,-45])
                caixa();
}