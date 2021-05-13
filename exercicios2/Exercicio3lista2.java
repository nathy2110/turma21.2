package exercicios2;
import java.util.Locale;
import java.util.Scanner;


public class Exercicio3lista2 {
	  public static void main(String[] args) {

	        Locale.setDefault(Locale.US);
	        Scanner leia = new Scanner(System.in);

	        /*
	         * 3- Fa�a um programa que receba a idade de uma pessoa e mostre na sa�da em qual
	         * categoria ela se encontra: 10-14 infantil, 15-17 juvenil, 18-25 adulto.
	         */

	        //variaveis
	        int idade = 0;
	        String nome;

	        //entradas
	        System.out.print("Informe seu nome: ");
	        nome = leia.next();
	        System.out.print("Informe sua idade: ");
	        idade = leia.nextInt();

	        //processamentos
	        if ((idade >= 10) && (idade <= 14)) {
	            System.out.printf("Ol� %s, sua categoria � infantil!", nome);
	        }
	        else if ((idade >= 15) && (idade <= 17)) {
	            System.out.printf("Ol� %s, sua categoria � juvenil!", nome);
	        }
	        else if ((idade >= 18) && (idade <= 25)) {
	            System.out.printf("Ol� %s, sua categoria � adulte!", nome);
	        }
	        else {
	            System.out.printf("Ol� %s, sua categoria n�o foi encontrada!", nome);
	        }

	    }
}
