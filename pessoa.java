package herança;

public class pessoa {
	ublic class Pessoa {
		
		private String nome;
		private String end;
		private String fone;
		private int cpf;
		private int idade;
		public Pessoa(String nome, String end, String fone, int cpf, int idade) {
			super();
			this.nome = nome;
			this.end = end;
			this.fone = fone;
			this.cpf = cpf;
			this.idade = idade;
		}
		
		public Pessoa() {
			super();
			
		}public String getNome() {
			return nome;
		}
		public void setNome(String nome) {
			this.nome = nome;
		}
		public String getEnd() {
			return ;
		}
		public void setEnd(String endereco) {
			this. = endereco;
		}
		public String getfone() {
			return cpf;
		}
		public void setfone(String cpf) {
			this.cpf = cpf;
		}
		public int getcpf() {
			return telefone;
		}
		public void setcpf(int telefone) {
			this.telefone = telefone;
		}
		public int getIdade() {
			return idade;
		}
		public void setIdade(int idade) {
		    this.idade = idade;
		}
		public void validarCpf() {
			if(getCpf().length() != 11) {
				System.out.println("\n--CPF Inválido!!!");
			}
			else
			{
				System.out.println("\n--CPF Válido!!!");
			}
			}
		}
	public class Empregado extends Pessoa{
		
