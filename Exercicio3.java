package exercicios;

import java.util.Scanner;

public class Exercicio3 {

	public static void main(String args[])
	{
		//Fa�a um sistema que leia o tempo de dura��o de um evento em uma f�brica expressa em segundos e mostre-o expresso em horas, minutos e segundos. 
		Scanner leia = new Scanner(System.in); 
		double  duracao = 0;
		double horas; 
		double minutos; 
		double segundos;
		
		
		System.out.println("Digite a dura��o do evento em segundos:");
		duracao=leia.nextDouble();
		
		
		
		
		
		
        horas= duracao/3600;
		
		minutos= (duracao%3600)/60;
		segundos= (duracao%3600)%60;
		
		System.out.println(horas);
		System.out.println(minutos);
		System.out.println(segundos);
		
		
	
	}
}
