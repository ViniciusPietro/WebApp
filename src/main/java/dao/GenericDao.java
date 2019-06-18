package dao;

import java.util.List;
import model.*;
import org.hibernate.Session;

public abstract class GenericDao {
	protected Session session;

	public void init()
	{
		this.session = new Factory().getConnection();
	}

	public void destroy()
	{
		this.session.close();
	}
	
	public abstract <T> T find(String id);

	public abstract <T> List<T> findAll();

	public abstract <T> void save(T t);
}
