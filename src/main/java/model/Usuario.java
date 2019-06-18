package model;

import java.util.Date;

import javax.persistence.*;

@Entity(name="usuario")
public class Usuario {

	@Id
	@Column(name = "num_titulo")
	private String titulo;

	@Column(name = "dta_emis")
	private Date dataEmissao;

	@Column(name = "zona")
	private String zona;

	@Column(name = "secao")
	private String secao;

	@Column(name = "nome")
	private String nome;

	@Column(name = "dta_nasc")
	private Date dataNascimento;

	@Column(name = "nivel")
	private int nivel;	

	@Column(name = "senha")
	private String senha;
	
	public String getTitulo() {
		return titulo;
	}

	public Date getDataEmissao() {
		return dataEmissao;
	}

	public String getZona() {
		return zona;
	}

	public String getSecao() {
		return secao;
	}

	public String getNome() {
		return nome;
	}
	
	public Date getDataNascimento() {
		return dataNascimento;
	}
	
	public int getNivel() {
		return nivel;
	}
	
	public String getSenha() {
		return senha;
	}	
}
