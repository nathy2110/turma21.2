package exercicios3;

import java.util.Scanner;

public class Exercicio1lista3 {

	public static int main(String args[])
	{
		//Ler 10 n�meros e imprimir quantos s�o pares e quantos s�o �mpares.
		
				int numero;
				int par=0;
				int impar=1;
				Scanner leia=new Scanner(System.in);
				
				System.out.println("Digite um n�mero:");
				numero=leia.nextInt();
				
				for(numero=0;numero<=10;numero++) {
					System.out.println(numero);
					
					if(numero%2==0) {
						par=par+1;
					}
				}
				System.out.println(par); 

				System.out.println(10-par); 

				System.out.println("\n");

				    return 0;
	}
}
	
		

