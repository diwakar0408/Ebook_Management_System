package entity.com;

public class addbookclass {
	public addbookclass() {
		super();
		// TODO Auto-generated constructor stub
	}
	int bookid;
	String bookname;
	String address;
	String orderid;
	public String getOrderid() {
		return orderid;
	}
	public void setOrderid(String orderid) {
		this.orderid = orderid;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	int userid;
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	String author;
	int bookid2;
	public int getBookid2() {
		return bookid2;
	}
	public void setBookid2(int bookid2) {
		this.bookid2 = bookid2;
	}
	String price;
	String bookcategory;
	String status;
	String photoname;
	String email;
	public addbookclass(String bookname, String author, String price, String bookcategory, String status,
			String photoname, String email) {
		super();
		this.bookid = bookid;
		this.bookname = bookname;
		this.author = author;
		this.price = price;
		this.bookcategory = bookcategory;
		this.status = status;
		this.photoname = photoname;
		this.email = email;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getBookid() {
		return bookid;
	}
	public void setBookid(int bookid) {
		this.bookid = bookid;
	}
	public String getBookname() {
		return bookname;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getBookcategory() {
		return bookcategory;
	}
	public void setBookcategory(String bookcategory) {
		this.bookcategory = bookcategory;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getPhotoname() {
		return photoname;
	}
	public void setPhotoname(String photoname) {
		this.photoname = photoname;
	}
	private String payment;
	public String getPayment() {
		return payment;
	}
	public void setPayment(String payment) {
		this.payment = payment;
	}
	@Override
	public String toString() {
		return "addbookclass [bookid=" + bookid + ", bookname=" + bookname + ", address=" + address + ", orderid="
				+ orderid + ", userid=" + userid + ", author=" + author + ", bookid2=" + bookid2 + ", price=" + price
				+ ", bookcategory=" + bookcategory + ", status=" + status + ", photoname=" + photoname + ", email="
				+ email + ", payment=" + payment + "]";
	}
	

}
