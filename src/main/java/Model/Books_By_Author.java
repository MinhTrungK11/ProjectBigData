/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Trung
 */
public class Books_By_Author {
    public int id;
    public String author;
    public String description;
    public String genre;
    public String img;
    public String isbn;
    public String link;
    public String title;

    public Books_By_Author(int id, String author, String description, String genre, String img, String isbn, String link, String title) {
        this.id = id;
        this.author = author;
        this.description = description;
        this.genre = genre;
        this.img = img;
        this.isbn = isbn;
        this.link = link;
        this.title = title;
    }

    public int getId() {
        return id;
    }

    public String getAuthor() {
        return author;
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

    public String getTitle() {
        return title;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setAuthor(String author) {
        this.author = author;
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

    public void setTitle(String title) {
        this.title = title;
    }

    @Override
    public String toString() {
        return "Books_By_Author{" + "id=" + id + ", author=" + author + ", description=" + description + ", genre=" + genre + ", img=" + img + ", isbn=" + isbn + ", link=" + link + ", title=" + title + '}';
    }
    
    
}
