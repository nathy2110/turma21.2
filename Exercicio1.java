package exercicios;

import java.util.Scanner;

public class Exercicio1 {
	public static void main(String args[])
	{
		
		 Scanner leia = new Scanner(System.in);
			double precoDeFabrica;
			double distribuidor;
			double impostos;
			double resultado;
			
			
System.out.println("Digite o preço do carro na fabrica:");
precoDeFabrica=leia.nextDouble();

distribuidor=precoDeFabrica*0.28;
impostos=precoDeFabrica*0.45;
resultado=precoDeFabrica+distribuidor+impostos;

System.out.println(resultado);
		}
	}
	
    
