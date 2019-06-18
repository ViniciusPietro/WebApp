package model;

import javax.persistence.*;

@Entity(name="candidatos")
public class Candidato{

	@Id
	@Column(name = "num_cand")
	private int numero;

	@Column(name = "nome")
	private String nome;
	
	@Column(name = "voto")
	private int votos;
	
	@Column(name = "partido")
	private String partido;	
	
    public int getNumero() 
    {
		return this.numero;
    }
    
    public int getVotos() 
    {
		return this.votos;
    }
    
    public String getNome()
    {
		return this.nome;
    }
	
	public String getPartido() 
    {
		return this.partido;
    }
}
