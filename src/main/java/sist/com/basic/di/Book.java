package sist.com.basic.di;

public class Book {
	
	private String bookName;
	private String author;
	private String publisher;
	private int price;
	
	
	
	public Book() {
		System.out.println("Book()");
	}
	
	public void intiBook() {
		System.out.println("intiBook()");
	}
	
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "Book [bookName=" + bookName + ", author=" + author + ", publisher=" + publisher + ", price=" + price
				+ "]";
	}
	
	

}
