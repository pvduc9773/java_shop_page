<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>

<%@page import="model.bean.CategoryBean"%>
<%@page import="model.bean.BookBean"%>
<%@page import="java.util.ArrayList"%>
<html>
<head>
    <meta name="viewport" content="width=device-width" />
    <title> Shop Homepage </title>
	
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    
    <!-- Bootstrap Core CSS -->
    <link href="Content/bootstrap.css" rel="stylesheet" />

    <!-- Custom CSS -->
    <link href="Content/shop-homepage.css" rel="stylesheet" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
	
	<%
		ArrayList<BookBean> books = (ArrayList<BookBean>) request.getAttribute("books");
		ArrayList<CategoryBean> categories = (ArrayList<CategoryBean>) request.getAttribute("categories");
	%>

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">BookStore</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="#">Trang chủ</a>
                    </li>
                    <li>
                        <a href="#">Đăng ký</a>
                    </li>
                    <li>
                        <a href="#">Đăng Nhập</a>
                    </li>
                    <li>
                        <a href="#" style="color: white; font-weight: bold; text-decoration: none;">
                            Giỏ Hàng (0)
                        </a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    
    <!-- Page Content -->
    <div class="container">
        <div class="row">
        	
        	<!-- DANH MỤC SÁCH -->
            <div class="col-md-3">
                <p class="lead"> DANH MỤC SÁCH</p>
                <div class="list-group">
                	<%
                		for(CategoryBean category: categories) {
                	%>
                		<a href="#" class="list-group-item">
                        	<%= category.getName() %>
                    	</a>
                	<%
                		}
                	%>
                </div> 
            </div>
            
            <!-- MAIN -->
            <div class="col-md-9">
                <!-- BANNER -->
                <div class="row carousel-holder">
                    <div class="col-md-12">
                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img class="slide-image" src="images/ancient-place.jpg" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="images/riverside-city.jpg" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="images/kayaks.jpg" alt="">
                                </div>
                            </div>
                            <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                            </a>
                            <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                            </a>
                        </div>
                    </div>
                </div>
                
                <!-- DANH SÁCH SÁCH -->
                <div>
                    <h3 style="Text-align:Center; color:red"> SÁCH MỚI </h3>
                    <div class="row">
                    	<%
                    		for (BookBean book: books) {
                    	%>
	                    	<div class="col-sm-4 col-lg-4 col-md-4 d-flex">
	                            <div class="thumbnail">
	                                <a href="#">
	                                    <img alt="<%= book.getName() %>" src="<%= book.getImage() %>"/>
	                                    <div class="namebook">
	                                        <br />
	                                        <h4>
	                                            <%= book.getName() %>
	                                        </h4>
	                                        <p></p>
	                                    </div>
	                                    <div class="ratings">
	                                        <p class="pull-right">15 reviews</p>
	                                        <p>
	                                            <span class="glyphicon glyphicon-star"></span>
	                                            <span class="glyphicon glyphicon-star"></span>
	                                            <span class="glyphicon glyphicon-star"></span>
	                                            <span class="glyphicon glyphicon-star"></span>
	                                            <span class="glyphicon glyphicon-star"></span>
	                                        </p>
	                                    </div>
	                                </a>
	                            </div>
	                        </div>
	                    <%
                    		}
	                    %>
                    </div>

                    <div class="MenuTrang">
                        <div class="pagination-container"><ul class="pagination"><li class="active"><a>1</a></li><li><a href="/BookStore?page=2">2</a></li><li><a href="/BookStore?page=3">3</a></li><li class="PagedList-skipToNext"><a href="/BookStore?page=2" rel="next">»</a></li></ul></div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- /.container -->
    <div class="container">
        <hr>
        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; Java Advanced - 2019 (@pvduc9773)</p>
                </div>
            </div>
        </footer>
    </div>
    <!-- /.container -->
    <!-- jQuery -->
    <script src="/Scripts/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="/Scripts/bootstrap.min.js"></script>
</body>
</html>
