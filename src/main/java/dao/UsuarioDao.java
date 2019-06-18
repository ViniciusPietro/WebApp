package dao;

import java.util.List;
import model.Usuario;;

public class UsuarioDao extends GenericDao 
{
	public UsuarioDao()
	{
		init();
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

    @Override
    public <T> T find(String id) 
    {
        return (T) session.find(Usuario.class, id);
    }

    @Override
    public <T> List<T> findAll()
    {
        return null;
    }
}
