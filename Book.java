package springECommerce.model;

public class Book {
	
	private int bookid;
	private String booktitle;
	private int bookprice;
	//private int bookcover;
	
	public Book() {
		
	}

	public Book(int bookid, String booktitle, int bookprice) {
		super();
		this.bookid = bookid;
		this.booktitle = booktitle;
		this.bookprice = bookprice;
		//this.bookcover = bookcover;
	}

	public int getBookid() {
		return bookid;
	}

	public void setBookid(int bookid) {
		this.bookid = bookid;
	}

	public String getBooktitle() {
		return booktitle;
	}

	public void setBooktitle(String booktitle) {
		this.booktitle = booktitle;
	}

	public int getBookprice() {
		return bookprice;
	}

	public void setBookprice(int bookprice) {
		this.bookprice = bookprice;
	}
	
//	public int getBookcover() {
//		return bookcover;
//	}
//
//	public void setBookcover(int bookcover) {
//		this.bookcover = bookcover;
//	}
	
	@Override
	public String toString() {
		return "Book [id=" + bookid + ", title=" + booktitle + ", price=" + bookprice + "]";
	}
}
