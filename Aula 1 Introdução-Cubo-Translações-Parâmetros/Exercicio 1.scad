/*
Exercício 1:
Criar uma caixa com dimensões esternas de 20x20x20mm e espessura de 2mm
usando cube(), union() e translate()
*/
//base
cube([20,20,2]);

//lateral esquerda
cube([2,20,20]);

//lateral direita
translate([18,0,0]) cube([2,20,20]);

//frente
cube([20,2,20]);

//fundo
translate([0,18,0]) cube([20,2,20]);
