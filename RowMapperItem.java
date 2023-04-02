package springECommerce.database;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;
import springECommerce.model.Item;


public class RowMapperItem implements RowMapper<Item>{

	@Override
	public Item mapRow(ResultSet rs, int rowNum) throws SQLException {
		Item bd=new Item();
		bd.setItemid(rs.getInt(1));
		bd.setItemname(rs.getString(2));
		bd.setItemprice(rs.getInt(3));
		bd.setItemimage(rs.getString(4));
		return bd;
	}

}