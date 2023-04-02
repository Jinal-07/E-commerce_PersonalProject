package springECommerce.controller;

import java.util.Locale;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import springECommerce.database.JdbcConfig;
import springECommerce.database.RowMapperCart;
import springECommerce.model.User;
import springECommerce.database.RowMapperImpl;
import springECommerce.database.RowMapperItem;
import springECommerce.model.Cart;
import springECommerce.model.Item;
//import springECommerce.database.RowMapperBook;

@Controller 
public class HomeController {
	
	int globalUserid=0;

	@RequestMapping("/")
	public String loginPage(){
		System.out.println("First page - Login3");
		return "login";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginGet(){
		System.out.println("LoginGet");
		return "login";
	}
	
	/*
	 * @RequestMapping(value = "/index", method = RequestMethod.GET) public String
	 * indexGet(Model model){ System.out.println("IndexGet");
	 * 
	 * ApplicationContext context = new
	 * AnnotationConfigApplicationContext(JdbcConfig.class); JdbcTemplate template =
	 * context.getBean("jdbcTemplate",JdbcTemplate.class); String query =
	 * "select * from books;"; RowMapper<Book> mapper = new RowMapperBook();
	 * List<Book> bd = null; bd = template.query(query, mapper);
	 * model.addAttribute("bookDetails",bd);
	 * System.out.println("Books being added.");
	 * 
	 * return "index"; }
	 */
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String indexGet(Model model){
		System.out.println("IndexGet3");
		
		ApplicationContext context = new AnnotationConfigApplicationContext(JdbcConfig.class);
		JdbcTemplate template = context.getBean("jdbcTemplate",JdbcTemplate.class);
		String query = "select * from items;";
		RowMapper<Item> mapper = new RowMapperItem();
		List<Item> bd = null;
		bd = template.query(query, mapper);
		
		model.addAttribute("itemDetails",bd);
		System.out.println("Items being added.");
		
		return "index";
	}
	
	@RequestMapping(value = "/cart", method = RequestMethod.GET)
	public String cartGet(Model model){
		System.out.println("Go to cart Get");
		
		ApplicationContext context = new AnnotationConfigApplicationContext(JdbcConfig.class);
		JdbcTemplate template = context.getBean("jdbcTemplate",JdbcTemplate.class);
		String query="select * from cart where userid=?";
		RowMapper<Cart> mapper = new RowMapperCart();
		List<Cart> carts = null;
		carts = template.query(query, mapper, globalUserid);
		
		query = "select * from items where itemid in ( ";
		for(Cart cart: carts) {
			query = query + cart.getItemid() + ", " ;
		}
		query = query.substring(0, query.length()-2) + " );";
		RowMapper<Item> itemmapper = new RowMapperItem();
		List<Item> bd = null;
		bd = template.query(query, itemmapper);
		
		model.addAttribute("itemDetails",bd);
		System.out.println("Items being added.");
		
		return "cart";
	}
	
	@RequestMapping(value = "/loginPost", method = RequestMethod.POST)
	public String homePage(@RequestParam("username") String username, 
			 			   @RequestParam("password") String userPassword, 
			 			   Model model) {
		System.out.println("Login Post Requested - Home page after login");
		
		ApplicationContext context = new AnnotationConfigApplicationContext(JdbcConfig.class);
		JdbcTemplate template = context.getBean("jdbcTemplate",JdbcTemplate.class);
		String query="select * from users where username=?";
		RowMapper<User> mapper = new RowMapperImpl();
		User user=null;
		try {
			user=template.queryForObject(query, mapper, username);
		}catch(Exception e)
		{
			model.addAttribute("error","invalid");
			System.out.println("Exception");
			return "login";
		}
		
		if(!user.getPassword().equals(userPassword))
		{
			System.out.println("Invalid");
			model.addAttribute("error","invalid");
			return "login";
		}
		
		globalUserid = user.getUserid();
		
		System.out.println("All set");
		
		return "redirect:/index";
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String registration(Locale locale, Model model) {
		System.out.println("Registration Page Requested, locale = " + locale);
		return "register";
	}
	
	@RequestMapping(value = "/registerPost", method = RequestMethod.POST)
	public String loginAfterRegistration(@RequestParam("username") String username, 
										 @RequestParam("password") String userPassword, 
										 @RequestParam("confirmpassword") String confirmPassword, 
										 Model model){
		System.out.println("Register Post Requested - LoginPage after registration");
		System.out.println("username: "+username);
		System.out.println("user password: "+userPassword);
		System.out.println("re-entered password: "+confirmPassword);
		
		ApplicationContext context = new AnnotationConfigApplicationContext(JdbcConfig.class);
		JdbcTemplate template = context.getBean("jdbcTemplate",JdbcTemplate.class);
		
		if(username.isBlank()) {
			model.addAttribute("error", "usernamecannotbeblank");
			return "redirect:/register";
		}
		
		if(userPassword.isBlank()) {
			model.addAttribute("error", "blankpassword");
			return "redirect:/register";
		}
		
		if(!userPassword.equals(confirmPassword)) {
			model.addAttribute("error", "passwordsdontmatch");
			return "redirect:/register";
		}
		
		String query = "insert into users(username,password) values(?,?)";
		int result = template.update(query,username,userPassword);
		System.out.println("saved successfully"+ result);
		
		return "redirect:/login";
	}
	
	@RequestMapping(value = "/addtocart", method = RequestMethod.GET)
	public String getCase(@RequestParam("itemid") String itemid, Locale locale, Model model) {
		System.out.println("Add to cart Get");
		
		ApplicationContext context = new AnnotationConfigApplicationContext(JdbcConfig.class);
		JdbcTemplate template = context.getBean("jdbcTemplate",JdbcTemplate.class);
		String query = "insert into cart(userid,itemid) values(?,?)";
		int result = template.update(query,globalUserid,itemid);
		System.out.println("Added to cart");
		return "redirect:/index";
	}
	
	@RequestMapping(value = "/removefromcart", method = RequestMethod.GET)
	public String removeFromCart(@RequestParam("itemid") String itemid, Locale locale, Model model) {
		System.out.println("Remove from cart Get");
		
		ApplicationContext context = new AnnotationConfigApplicationContext(JdbcConfig.class);
		JdbcTemplate template = context.getBean("jdbcTemplate",JdbcTemplate.class);
		String query = "delete from cart where userid=? and itemid=?";
		int result = template.update(query,globalUserid,itemid);
		System.out.println("Removed from cart");
		return "redirect:/cart";
	}
	
	@RequestMapping(value = "/purchase", method = RequestMethod.GET)
	public String purchase(Model model){
		System.out.println("Purchase Get");
		
		ApplicationContext context = new AnnotationConfigApplicationContext(JdbcConfig.class);
		JdbcTemplate template = context.getBean("jdbcTemplate",JdbcTemplate.class);
		String query="select * from cart where userid=?";
		RowMapper<Cart> mapper = new RowMapperCart();
		List<Cart> carts = null;
		carts = template.query(query, mapper, globalUserid);
		
		query = "select * from items where itemid in ( ";
		for(Cart cart: carts) {
			query = query + cart.getItemid() + ", " ;
		}
		query = query.substring(0, query.length()-2) + " );";
		RowMapper<Item> itemmapper = new RowMapperItem();
		List<Item> bd = null;
		bd = template.query(query, itemmapper);
		int total=0;
		for(Item item: bd) {
			total += item.getItemprice();
		}
		model.addAttribute("itemDetails",bd);
		model.addAttribute("totalAmount",total);
		System.out.println("Items being added.");
		
		return "purchase";
	}
	
	
	@RequestMapping(value = "/placeorder", method = RequestMethod.GET)
	public String placeOrder() {
		System.out.println("Order placed successfully!!");
		return "success";
	}
}
