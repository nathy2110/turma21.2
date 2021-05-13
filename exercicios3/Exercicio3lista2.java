package exercicios3;

import java.util.Scanner;

public class Exercicio3lista2 {
	
	
		

		int main( ){

		int idade, menores = 0, maiores = 0;

		do{

		printf ("Digite sua idade:\n", maiores); printf ("Para terminar digite -99\n", maiores); scanf ("%d",idade);

		if (idade > 0 && idade < 21) menores += 1; 

		if (idade > 50) maiores += 1; 

		while (idade != -99);

		printf ("O total de pessoas com menos de 21 anos foram: %d \n", menores); printf ("O total de pessoas com mais de 50 anos foram: %d \n", maiores);

		system("PAUSE"); return 0;
		


}

		private void scanf(String string, int idade) {
			
		}

		private void printf(String string, int menores) {
			
		

		private void system(String string) 
			// TODO Auto-generated method stub
			
		}
