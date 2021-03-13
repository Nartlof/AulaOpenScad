/*
Exercício 1:
Transformar a caixa desenvolvida na última aula em um módulo que aceite
os parâmetros Altura (A), Largura (L), Comprimento (C) e Espessura (E) e 
crie a caixa.
*/

Espessura = 2;
Altura = 20.1;        //dimensão na direção Z
Largura = 20.1;       //dimensão na direção X
Comprimento = 20.1;   //dimensão na direção Y


module caixa(A=20,L=20,C=20,E=2) {
    //base
    cube([L,C,E]);

    //lateral esquerda
    cube([E,C,A]);

    //lateral direita
    translate([L - E,0,0]) cube([E,C,A]);

    //frente
    cube([L,E,A]);

    //fundo
    translate([0,C - E,0]) cube([L,E,A]);
}

caixa(A=Altura,L=Largura,C=Comprimento,E=Espessura);