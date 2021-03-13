/*
Exercicio 2:
Use o comando for para reduzir a quantidade de declarações 'cube' no módulo
criado no Exercicio 1.
*/

Espessura = 2;
Altura = 20.1;        //dimensão na direção Z
Largura = 20.1;       //dimensão na direção X
Comprimento = 20.1;   //dimensão na direção Y


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

caixa(A=Altura,L=Largura,C=Comprimento,E=Espessura);