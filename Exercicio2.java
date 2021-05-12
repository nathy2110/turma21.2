package exercicios;

import java.util.Scanner;

public class Exercicio2 {

	public static void main(String args[])
	
	{
		Scanner leia = new Scanner(System.in); 
			int  idade = 0;
			int anos; 
			int meses; 
			long dias;
			
			
			System.out.println("Digite a sua idade em dias:");
			idade=(int) leia.nextLong();
			
			
			
			
			
			
            anos= idade/365;
			
			meses= (idade%365)/30;
			dias= (idade%365)%30;
			
			System.out.println(anos);
			System.out.println(meses);
			System.out.println(dias);
			
			
		
		
	}
	
}
