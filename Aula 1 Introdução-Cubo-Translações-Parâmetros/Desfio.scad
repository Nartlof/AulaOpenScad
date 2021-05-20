/*
Crie uma tampa para a caixa do exercício 2 que encaixe por dentro e já considere uma folga.
Dica: Considere a folga como um parâmetro.
*/
Espessura = 2;
Largura = 20;       //dimensão na direção X
Comprimento = 20;   //dimensão na direção Y
Folga = 0.25;         //Folga

//base
cube([Largura,Comprimento,Espessura]);

//lateral esquerda
translate([1,1,0]*(Espessura+Folga))
    cube([Espessura,Comprimento-2*(Folga+Espessura),2*Espessura]);

//lateral direita
translate([Largura - 2*Espessura - Folga,Espessura+Folga,0]) 
    cube([Espessura,Comprimento-2*(Folga+Espessura),2*Espessura]);

//frente
translate([1,1,0]*(Espessura+Folga))
    cube([Largura-2*(Folga+Espessura),Espessura,2*Espessura]);

//fundo
translate([Espessura+Folga,Comprimento - 2*Espessura - Folga,0]) 
    cube([Largura-2*(Folga+Espessura),Espessura,2*Espessura]);
