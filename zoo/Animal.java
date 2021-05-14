package zoo;

public class Animal {
	public String nome;
	private int idade;
	//construtores
	public Animal(String nome, int idade) {
		super();
		this.nome = nome;
		this.idade = idade;
	}
	//get & set
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public int getIdade() {
		return idade;
	}
	public void setIdade(int idade) {
		this.idade = idade;
	}
	//metodos
	public void emitirSom() {
		System.out.println("emitindo som do animal");
	}
}
