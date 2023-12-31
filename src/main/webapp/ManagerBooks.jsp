<%-- 
    Document   : ManagerProduct
    Created on : Dec 28, 2020, 5:19:02 PM
    Author     : trinh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Management Book</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/manager.css" rel="stylesheet" type="text/css"/>
        <style>
            img{
                width:150px;
                height: 120px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Manage <b>Books</b></h2>
                        </div>
                        <div class="col-sm-6">
                            <a href="/Project_Bigdata/IndexControll" class="btn btn-success" data-toggle="modal"><span>Back To Home</span>
                            <a href="#addEmployeeModal"  class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add New Product</span></a>     					
                        </div>
                    </div>
                </div>
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>Book Image</th>
                            <th>Book Name</th>
                            <th>Author</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${Listbooks}" var="i">
                            <tr>
                                <td>
                                    <img src="${i.img}">
                                </td> 
                                
                                <td>${i.title}</td>
                                
                                <td>${i.author}</td>
                                
                                <td>
                                    <a href="update?id=${i.id}"  class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                    <a href="deleteBooks?id=${i.id}&title=${i.title}&author=${i.author}" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            

        </div>
        <!-- Edit Modal HTML -->
        <div id="addEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="add" method="post">
                        <div class="modal-header">						
                            <h4 class="modal-title">Add Book</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <div class="form-group">
                                <label>ID</label>
                                <input name="id" type="number" class="form-control" required >
                            </div>
                            <div class="form-group">
                                <label>Author</label>
                                <input name="thor" type="text" class="form-control" required >
                            </div>
                            <div class="form-group">
                                <label>Bookformat</label>
                                <input name="bookformat" type="text" class="form-control" required >
                            </div>
                            <div class="form-group">
                                <label>Description</label>
                                <input name="description" type="text" class="form-control" required >
                            </div>
                            <div class="form-group">
                                <label>Genre</label>
                                <input name="genre" type="text" class="form-control" required >
                            </div>
                            <div class="form-group">
                                <label>Image</label>
                                <input name="img" type="text" class="form-control" required >
                            </div>
                            <div class="form-group">
                                <label>Isbn</label>
                                <input name="isbn" type="text" class="form-control" required >
                            </div>
                            <div class="form-group">
                                <label>Links</label>
                                <input name="link" type="text" class="form-control" required >
                            </div>
                            <div class="form-group">
                                <label>Pages</label>
                                <input name="pages" type="number" class="form-control" required >
                            </div>
                            <div class="form-group">
                                <label>Rating</label>
                                <input name="rating" type="text" class="form-control" required >
                            </div>
                            <div class="form-group">
                                <label>Review</label>
                                <input name="reviews" type="number" class="form-control" required >
                            </div>
                            <div class="form-group">
                                <label>Title</label>
                                <input name="title" type="text" class="form-control" required >
                            </div>
                            <div class="form-group">
                                <label>Totalratings</label>
                                <input name="totalratings" type="number" class="form-control" required >
                            </div>
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-success" value="Add">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    
 
    <script src="js/manager.js" type="text/javascript"></script>
</body>
</html>