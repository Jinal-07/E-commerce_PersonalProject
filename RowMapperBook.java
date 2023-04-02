package springECommerce.database;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;
import springECommerce.model.Book;


public class RowMapperBook implements RowMapper<Book>{

	@Override
	public Book mapRow(ResultSet rs, int rowNum) throws SQLException {
		Book bd=new Book();
		bd.setBookid(rs.getInt(1));
		bd.setBooktitle(rs.getString(2));
		bd.setBookprice(rs.getInt(3));
		//bd.setBookcover(rs.getInt(4));
		return bd;
	}

}