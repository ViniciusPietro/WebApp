package dao;

import java.util.List;
import model.Votos;

public class VotingDao extends GenericDao 
{
	public VotingDao()
	{
		init();
	}
	
	@Override
	public <T> List<T> findAll()
	{	
		List<Votos> obj = session.createQuery("SELECT v FROM VOTOS v", Votos.class).getResultList();	

		return (List<T>) obj;
	}

	@Override
	public <T> T find(String id) 
	{
		return null;
	}

	@Override
	public <T> void save(T t) 
	{
		try 
		{
			session.getTransaction().begin();
			session.persist(t);
			session.getTransaction().commit();
		} 
		catch (Exception e) 
		{
			session.getTransaction().rollback();
		}		
	}
}
