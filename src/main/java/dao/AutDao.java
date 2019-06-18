package dao;

import java.util.List;
import model.Authorization;;

public class AutDao extends GenericDao 
{
	public AutDao()
	{
		init();
	}
	
	@Override
	public <T> List<T> findAll()
	{	
		List<Authorization> obj = session.createQuery("SELECT a FROM AUTORIZACAO a", Authorization.class).getResultList();	

		return (List<T>) obj;
	}

	@Override
	public <T> T find(String id) 
	{
		return (T) session.find(Authorization.class, id);
	}

	@Override
	public <T> void save(T t) 
	{
		try 
		{
			session.getTransaction().begin();
			session.saveOrUpdate("autorizacao", t);
			session.getTransaction().commit();
		} 
		catch (Exception e) 
		{
			session.getTransaction().rollback();
		}		
	}
}
