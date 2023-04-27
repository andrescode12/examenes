Proceso sin_titulo
	Definir n,i,c Como Entero;
	Dimension n[1801];
	c <- 0;
	n[1] <- 0;
	Para i<-2 Hasta 721 Hacer
		n[i] <- n[i-1];
		Si i MOD 2==0 Entonces
			n[i] <- n[i]+2;
		SiNo
			n[i] <- n[i]+3;
		FinSi
		c <- i;
	FinPara
	Para i<-2 Hasta 721 Hacer
		Escribir n[i];
	FinPara
	total();
	promp();
	primos();
FinProceso

SubProceso total
	Definir n,i,t Como Entero;
	Dimension n[1800];
	t <- 0;
	n[1] <- 0;
	Para i<-2 Hasta 721 Hacer
		n[i] <- n[i-1];
		Si i MOD 2==0 Entonces
			n[i] <- n[i]+2;
		SiNo
			n[i] <- n[i]+3;
		FinSi
		t <- t+n[i];
	FinPara
	Escribir 'el total es ',t;
FinSubProceso

SubProceso promp
	Definir n,i,c Como Entero;
	Definir t Como Real;
	Dimension n[1800];
	c <- 0;
	t <- 0;
	n[1] <- 0;
	Para i<-2 Hasta 721 Hacer
		n[i] <- n[i-1];
		Si i MOD 2==0 Entonces
			n[i] <- n[i]+2;
		SiNo
			n[i] <- n[i]+3;
		FinSi
		Si n[i] MOD 2==0 Entonces
			t <- t+n[i];
			c <- c+1;
		FinSi
	FinPara
	Escribir 'el promedio de pares es ',t/c;
FinSubProceso

SubProceso primos
	Definir n,i,t Como Entero;
	Dimension n[1800];
	t <- 0;
	n[1] <- 0;
	Para i<-2 Hasta 721 Hacer
		n[i] <- n[i-1];
		Si i MOD 2==0 Entonces
			n[i] <- n[i]+2;
		SiNo
			n[i] <- n[i]+3;
		FinSi
		Si (n[i] MOD 2==0) Y (n[i] MOD 3==0) Y (n[i] MOD 5==0) O n[i]==2 Entonces
			t <- t+1;
		FinSi
	FinPara
	Escribir 'el total de primos es ',t;
FinSubProceso
