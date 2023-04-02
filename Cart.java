package springECommerce.model;

public class Cart {
	
	private int cartid;
	private int userid;
	private int itemid;
	
	public Cart() {
		
	}

	public Cart(int cartid, int userid, int itemid) {
		super();
		this.cartid = cartid;
		this.userid = userid;
		this.itemid = itemid;
	}

	public int getCartid() {
		return cartid;
	}

	public void setCartid(int cartid) {
		this.cartid = cartid;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public int getItemid() {
		return itemid;
	}

	public void setItemid(int itemid) {
		this.itemid = itemid;
	}

	@Override
	public String toString() {
		return "Cart [cartid=" + cartid + ", userid=" + userid + ", itemid=" + itemid + "]";
	}
	
}