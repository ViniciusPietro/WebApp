package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity(name = "VOTOS")
public class Votos {
	@Id
	@Column(name = "id_voto", insertable = false, updatable = false)
	private int id;

	@Column(name = "id_usu")	
	private String titulo;

	@Column(name = "id_cand")
	private int candidato;

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public int getCandidato() {
		return candidato;
	}

	public void setCandidato(int candidato) {
		this.candidato = candidato;
	}	
}
