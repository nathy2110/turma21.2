package exercicios2;

import java.util.Scanner;

public class Exercicio1lista2 {
public static void main(String args[])
{
	Scanner leia = new Scanner(System.in);
	
	int num1;
	int num2;
	int num3;
	
	
    int local;
	
	
	System.out.print("Digite o primeiro n�mero:   \n");
	num1 = leia.nextInt();
	
	System.out.print("Digite o segundo n�mero:    \n");
	num2 = leia.nextInt();
	
	System.out.print("Digite o terceiro n�mero:   \n");
	num3 = leia.nextInt();
	
   if (num1 > num2)
	   local = num1;
   else
	   local = num2;
   
   if(local > num3)
	   System.out.printf("O n�mero maior �: %d", local);
	
   else {
   	local=num3;
   }
}
 
    	
}

