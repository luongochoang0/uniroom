package phin.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

public abstract class AbstractDAO<T> {
	
	@Autowired
	protected JdbcTemplate jdbcTemplate;
	
	public List<T> getAll(int offset, int rowCount) {
		return null;
	}
	
	public List<T> getAll() {
		return null;
	}

	public int update(T t) {
		return 0;
	}

	public int save(T t) {
		return 0;
	}

	public int del(int id) {
		return 0;
	}

	public List<T> findByName(String searchStr) {
		return null;
	}

	public T findById(int id) {
		return null;
	}
	
	public int totalRow() {
		return 0;
	}
}
