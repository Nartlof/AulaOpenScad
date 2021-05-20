Lado=5;
module exemplo(){
	Lado=9;
    for (i=[1:5]){
        Lado=i*Lado;
        echo("Lado do Loop",Lado);
    }
	echo("Lado local",Lado);
}
exemplo();
echo("Lado global",Lado);
