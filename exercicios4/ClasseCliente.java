package exercicios4;

public class ClasseCliente {

	private String nome;
	private String cpf;
	private String idade;
	
	public ClasseCliente (String primeiro,String string,String string2)
	   {
		   nome=primeiro;
		   cpf=string;
		   idade=string2;
		   
	   }
	public String getNomeConjunto()
	   {
		   String nomeConjunto=nome+" "+cpf+" "+idade;
		   return nomeConjunto;
		   
	   }
	
}
