package dao;

import java.util.List;
import model.Candidato;

public class CandidatoDao extends GenericDao 
{
	public CandidatoDao()
	{
		init();
	}
	
	@Override
	public <T> List<T> findAll()
	{	
		List<Candidato> obj = session.createQuery("SELECT c FROM candidatos c", Candidato.class).getResultList();	

		return (List<T>) obj;
	}

	@Override
	public <T> T find(String id) 
	{
		return (T) session.find(Candidato.class, Integer.parseInt(id));
	}

	@Override
	public <T> void save(T t) 
	{		
	}
}
