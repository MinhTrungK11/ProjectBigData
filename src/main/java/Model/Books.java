/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Trung
 */
public class Books {
    public int id;
    public String author;
    public String bookformat;
    public String description;
    public String genre;
    public String img;
    public String isbn;
    public String link;
    public int pages;
    public String rating;
    public int reviews;
    public String title;
    public int totalratings;

    public Books(int id, String author, String bookformat, String description, String genre, String img, String isbn, String link, int pages, String rating, int reviews, String title, int totalratings) {
        this.id = id;
        this.author = author;
        this.bookformat = bookformat;
        this.description = description;
        this.genre = genre;
        this.img = img;
        this.isbn = isbn;
        this.link = link;
        this.pages = pages;
        this.rating = rating;
        this.reviews = reviews;
        this.title = title;
        this.totalratings = totalratings;
    }

    public int getId() {
        return id;
    }

    public String getAuthor() {
        return author;
    }

    public String getBookformat() {
        return bookformat;
    }

    public String getDescription() {
        return description;
    }

    public String getGenre() {
        return genre;
    }

    public String getImg() {
        return img;
    }

    public String getIsbn() {
        return isbn;
    }

    public String getLink() {
        return link;
    }

    public int getPages() {
        return pages;
    }

    public String getRating() {
        return rating;
    }

    public int getReviews() {
        return reviews;
    }

    public String getTitle() {
        return title;
    }

    public int getTotalratings() {
        return totalratings;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public void setBookformat(String bookformat) {
        this.bookformat = bookformat;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public void setPages(int pages) {
        this.pages = pages;
    }

    public void setRating(String rating) {
        this.rating = rating;
    }

    public void setReviews(int reviews) {
        this.reviews = reviews;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setTotalratings(int totalratings) {
        this.totalratings = totalratings;
    }

    @Override
    public String toString() {
        return "Books{" + "id=" + id + ", author=" + author + ", bookformat=" + bookformat + ", description=" + description + ", genre=" + genre + ", img=" + img + ", isbn=" + isbn + ", link=" + link + ", pages=" + pages + ", rating=" + rating + ", reviews=" + reviews + ", title=" + title + ", totalratings=" + totalratings + '}';
    }
    
}
