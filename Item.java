package springECommerce.model;

public class Item {
	
	private int itemid;
	private String itemname;
	private int itemprice;
	private String itemimage;
	//private int bookcover;
	
	public Item() {
		
	}
	public Item(int itemid, String itemname, int itemprice, String itemimage) {
		super();
		this.itemid = itemid;
		this.itemname = itemname;
		this.itemprice = itemprice;
		this.itemimage = itemimage;
	}
	public int getItemid() {
		return itemid;
	}
	public void setItemid(int itemid) {
		this.itemid = itemid;
	}
	public String getItemname() {
		return itemname;
	}
	public void setItemname(String itemname) {
		this.itemname = itemname;
	}
	public int getItemprice() {
		return itemprice;
	}
	public void setItemprice(int itemprice) {
		this.itemprice = itemprice;
	}
	public String getItemimage() {
		return itemimage;
	}
	public void setItemimage(String itemimage) {
		this.itemimage = itemimage;
	}
	@Override
	public String toString() {
		return "Item [itemid=" + itemid + ", itemname=" + itemname + ", itemprice=" + itemprice + ", itemimage="
				+ itemimage + "]";
	}
}
