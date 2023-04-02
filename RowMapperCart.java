package springECommerce.database;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;
import springECommerce.model.Cart;


public class RowMapperCart implements RowMapper<Cart>{

	@Override
	public Cart mapRow(ResultSet rs, int rowNum) throws SQLException {
		Cart cd=new Cart();
		cd.setCartid(rs.getInt(1));
		cd.setUserid(rs.getInt(2));
		cd.setItemid(rs.getInt(3));
		return cd;
	}

}