/*
Exercício 2:
Criar uma caixa com dimensões parametrizadas 
usando cube(), union() e translate()
*/

Espessura = 2;
Altura = 20.1;        //dimensão na direção Z
Largura = 20.1;       //dimensão na direção X
Comprimento = 20.1;   //dimensão na direção Y

//base
cube([Largura,Comprimento,Espessura]);

//lateral esquerda
cube([Espessura,Comprimento,Altura]);

//lateral direita
translate([Largura - Espessura,0,0]) cube([Espessura,Comprimento,Altura]);

//frente
cube([Largura,Espessura,Altura]);

//fundo
translate([0,Comprimento - Espessura,0]) cube([Largura,Espessura,Altura]);