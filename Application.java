package springECommerce.database;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;

public class Application {

	public static void main(String[] args) {
		
		ApplicationContext context = new AnnotationConfigApplicationContext(JdbcConfig.class);
		JdbcTemplate template = context.getBean("jdbcTemplate",JdbcTemplate.class);
		
		String query = "insert into users(username,password) values(?,?)";
		int result = template.update(query,"dhaval","dhaval");
	}

}
