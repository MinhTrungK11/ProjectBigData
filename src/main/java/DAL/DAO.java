package DAL;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Trung
 */

import Model.Books;
import Model.Books_By_Author;
import Model.Books_By_Title;
import com.datastax.driver.core.BoundStatement;
import com.datastax.driver.core.PreparedStatement;
import com.datastax.driver.core.ResultSet;
import com.datastax.driver.core.Row;
import Connection.JDBCConnection;
import java.util.ArrayList;
import java.util.List;
import static javax.swing.UIManager.getString;
public class DAO {
    
    public List<Books> getBooking()
    {
        List<Books> list = new ArrayList<>();
        try 
        {
            JDBCConnection connection = new JDBCConnection();
            connection.getJDBCConnection("127.0.0.1", 9042);
            final String selectQuery = "select *  from project_bigdata.books limit  100 ";
            
            PreparedStatement psSelect = connection.getSession().prepare(selectQuery);
            //BoundStatement bsSelect = psSelect.bind("HCM");
            
            ResultSet rs = connection.getSession().execute(selectQuery);
            
            rs.forEach( rr ->
            {
                list.add(new Books(rr.getInt("id"),
                        rr.getString("author"),
                        rr.getString("bookformat"),
                        rr.getString("description"),
                        rr.getString("genre"),
                        rr.getString("img"),
                        rr.getString("isbn"),
                        rr.getString("link"),
                        rr.getInt("pages"),
                        rr.getString("rating"),
                        rr.getInt("reviews"),
                        rr.getString("title"),
                        rr.getInt("totalratings")
                ));
            });
                
            
            connection.close();
            
        } catch (Exception e) 
        {
            e.printStackTrace();
        }
        return list;
    }
//    public void DeleteBooks(int id)
//    {
//        try {
//            JDBCConnection connection = new JDBCConnection();
//            connection.getJDBCConnection("127.0.0.1", 9042);
//            final String selectQuery = " delete  from project_bigdata.books where id = ?  ";
//            
//            PreparedStatement psDelete = connection.getSession().prepare(selectQuery);
//            BoundStatement bsDelete = psDelete.bind(id);
//            
//            ResultSet rs = connection.getSession().execute(bsDelete);
//            
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//    }
    public void DeleteBooks(int id,String title,String author)
    {
        try {
            JDBCConnection connection = new JDBCConnection();
            connection.getJDBCConnection("127.0.0.1", 9042);
            final String selectQuery = " delete  from project_bigdata.books_by_title where title = ?  ";
            
            PreparedStatement psDelete = connection.getSession().prepare(selectQuery);
            BoundStatement bsDelete = psDelete.bind(title);
            
            ResultSet rs = connection.getSession().execute(bsDelete);
            
            final String deleteQuery = " delete  from project_bigdata.books where id = ?  ";
            
            PreparedStatement psDeletetitle = connection.getSession().prepare(deleteQuery);
            BoundStatement bsDeletetitle = psDeletetitle.bind(id);
            ResultSet rm = connection.getSession().execute(bsDeletetitle);
            
            final String deleteQueryauthor = " delete  from project_bigdata.books_by_author where author = ?  ";
            
            PreparedStatement psDeleteautor = connection.getSession().prepare(deleteQueryauthor);
            BoundStatement bsDeleteautor = psDeleteautor.bind(author);
            ResultSet authors = connection.getSession().execute(bsDeleteautor);
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public void InsertBooks(int id,String author,String bookformat,String description,String genre,String img,String isbn,String link,int pages,String rating,int reviews,String title,int totalratings)
    {
        try {
            JDBCConnection connection = new JDBCConnection();
            connection.getJDBCConnection("127.0.0.1", 9042);
            final String selectQuery = " insert into project_bigdata.books(id,author,bookformat,description,genre,img,isbn,link,pages,rating,reviews,title,totalratings) "
                    + "values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement psInsert = connection.getSession().prepare(selectQuery);
            BoundStatement bsInsert = psInsert.bind(id,author,bookformat,description,genre,img,isbn,link,pages,rating,reviews,title,totalratings);
            ResultSet rs = connection.getSession().execute(bsInsert);
            
            final String inserttitle = " insert into project_bigdata.books_by_title(id,author,description,genre,img,isbn,link,title) "
                    + "values(?,?,?,?,?,?,?,?)";
            PreparedStatement psInserttitle = connection.getSession().prepare(inserttitle);
            BoundStatement bsInserttitle = psInserttitle.bind(id,author,description,genre,img,isbn,link,title);
            ResultSet rstitle = connection.getSession().execute(bsInserttitle);
            
            final String insertauthor = " insert into project_bigdata.books_by_author(id,author,description,genre,img,isbn,link,title) "
                    + "values(?,?,?,?,?,?,?,?)";
            PreparedStatement psInserauthor = connection.getSession().prepare(insertauthor);
            BoundStatement bsInsertauthor = psInserauthor.bind(id,author,description,genre,img,isbn,link,title);
            ResultSet rsauthor = connection.getSession().execute(bsInsertauthor);
            
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public Books get1Book(int id)
    {
        
        JDBCConnection connection = new JDBCConnection();
        connection.getJDBCConnection("127.0.0.1", 9042);
        final String selectQuery = "select *  from project_bigdata.books where id = ?";
        try {
            PreparedStatement psInsert = connection.getSession().prepare(selectQuery);
            BoundStatement bsInsert = psInsert.bind(id);
            ResultSet rs = connection.getSession().execute(bsInsert); 
            for (Row r : rs) {
                return new Books(r.getInt("id"),
                        r.getString("author"),
                        r.getString("bookformat"),
                        r.getString("description"),
                        r.getString("genre"),
                        r.getString("img"),
                        r.getString("isbn"),
                        r.getString("link"),
                        r.getInt("pages"),
                        r.getString("rating"),
                        r.getInt("reviews"),
                        r.getString("title"),
                        r.getInt("totalratings")
                );
            }
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    public void UpdateBooks(String author,String bookformat,String description,String genre,String img,String link,String title,int id)
    {
        JDBCConnection connection = new JDBCConnection();
        connection.getJDBCConnection("127.0.0.1", 9042);
        
        try {
            final String selectQuery = "update  project_bigdata.books set bookformat=?,description=?,genre=?,"
                + "img=?,link=? where id = ? ";
            PreparedStatement psUpdate = connection.getSession().prepare(selectQuery);
            BoundStatement bsUpdate = psUpdate.bind(bookformat,description,genre,img,link,id);
            ResultSet rs = connection.getSession().execute(bsUpdate);
            
            final String updatetitle = "update  project_bigdata.books_by_title set description=?,genre=?,"
                + "img=?,link=? where title = ? and id = ? and author = ? ";
            PreparedStatement psUpdatetitle = connection.getSession().prepare(updatetitle);
            BoundStatement bsUpdatetitle = psUpdatetitle.bind(description,genre,img,link,title,id,author);
            ResultSet rstitle = connection.getSession().execute(bsUpdatetitle);
            
            final String updateautor = "update  project_bigdata.books_by_author set description=?,genre=?,"
                + "img=?,link=? where author = ? and id = ? and title = ? ";
            PreparedStatement psUpdateauthor = connection.getSession().prepare(updateautor);
            BoundStatement bsUpdateauthor = psUpdateauthor.bind(description,genre,img,link,author,id,title);
            ResultSet rsauthor = connection.getSession().execute(bsUpdateauthor);
            
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public List<Books_By_Author> get1Book_By_Author(String author)
    {
        List<Books_By_Author> list = new ArrayList<>();
        JDBCConnection connection = new JDBCConnection();
        connection.getJDBCConnection("127.0.0.1", 9042);
        final String selectQuery = "select *  from project_bigdata.books_by_author where author = ? ";
        try {
            PreparedStatement psInsert = connection.getSession().prepare(selectQuery);
            BoundStatement bsInsert = psInsert.bind(author);
            ResultSet rs = connection.getSession().execute(bsInsert); 
            rs.forEach( rr ->
            {
                list.add(new Books_By_Author(rr.getInt("id"),
                        rr.getString("author"),
                        rr.getString("description"),
                        rr.getString("genre"),
                        rr.getString("img"),
                        rr.getString("isbn"),
                        rr.getString("link"),
                        rr.getString("title")
                ));
            });
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    public List<Books_By_Title> get1Book_By_Title(String title)
    {
        List<Books_By_Title> list = new ArrayList<>();
        JDBCConnection connection = new JDBCConnection();
        connection.getJDBCConnection("127.0.0.1", 9042);
        final String selectQuery = "select *  from project_bigdata.books_by_title where title = ? ";
        try {
            PreparedStatement psInsert = connection.getSession().prepare(selectQuery);
            BoundStatement bsInsert = psInsert.bind(title);
            ResultSet rs = connection.getSession().execute(bsInsert); 
            rs.forEach( rr ->
            {
                list.add(new Books_By_Title(rr.getInt("id"),
                        rr.getString("author"),
                        rr.getString("description"),
                        rr.getString("genre"),
                        rr.getString("img"),
                        rr.getString("isbn"),
                        rr.getString("link"),
                        rr.getString("title")
                ));
            });
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
