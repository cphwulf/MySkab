<%@ page import="FunctionLayer.Cars" %>
<%@include file="includes/header.inc"%>
<%!
    public void jspInit() {
        Cars.initCars();
    }
%>

<%
    request.setAttribute("ecobiler",Cars.getCars());
%>

<c:out value="Size: ${requestScope.ecobiler.size()}" />
<body>
<div class="container">
    <div class="row">
        <img src="images/carrentalFog.png">
        <nav class="navbar-expand-md bg-dark navbar-dark">
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav ml-auto">
                    <li class="active"><a href="#">Home</a></li>
                    <li><a href="#">Find us</a></li>
                    <li><a href="#">Fog Airline</a></li>
                    <li><a href="#">Fog Design</a></li>
                </ul>
            </div>
        </nav>
    </div>
    <div class="row">
        <p></p>
    </div>
    <div class="row">
        <div class="col-md-3 ">
            <div class="jumbotron">
                <form action="car.jsp" method="post">
                    <ul class="m-1 list-group">
                        <li class="list-group-item" >Audi A6</li>
                        <li class="list-group-item">Sporty</li>
                        <li class="list-group-item">One week for only $200</li>
                    </ul>
                    <input type="hidden" name="userId" value="take">
                    <button class="btn btn-outline-info" type="submit">Take offer </button>
                </form>
            </div>
        </div>
        <div class="col-md-4 col-sm">
            <img src="images/As6.jpg">
        </div>
    </div>
    <!--<div id="bannerimage"></div>-->
    <form >
        <div class="form-group">
            <label for="ecocars">Eco</label>
            <select id="ecocars" name="ecobiler">
                <c:forEach var="car" items="${ecobiler}">
                    <option value="${car.id}">${car.model} ${car.make} ${car.MPG_City}</option>
                </c:forEach>
            </select>
        </div>

        <div class="form-group">
            <input type="radio" id="gold" name="membertype" value="gold">
            <label for="gold">Gold</label><br>
            <input type="radio" id="premium" name="membertype" value="premium">
            <label for="premium">Premium</label><br>
            <input type="radio" id="custom" name="membertype" value="custom" checked>
            <label for="custom">First customer</label>
        </div>
        <div class="form-group">
            <input type="checkbox" id="insurance" name="insurance" value="insurance">
            <label for="insurance"> I want insurance</label><br>
            <input type="checkbox" id="childseat" name="childseat" value="childseat">
            <label for="childseat"> I want a child seat</label><br>
            <input type="checkbox" id="dropdiff" name="dropdiff" value="dropdiff" onclick="dropLocations()">
            <label for="dropdiff"> I want a different drop</label><br>
            <div class="drops" style="visibility: hidden">
                <input type="text" id="droplocation" name="droplocation">
            </div>
        </div>
        <div class="form-group">
            <label for="comment">Comment on car</label><br>
            <input type="text" id="comment" name="comment">
        </div>
        <div class="form-group">
            <label for="datepicker">Date:</label><br>
        <input type="text" id="datepicker">
        </div>
        <button class="btn btn-primary" type="submit">Indsend</button>
    </form>
    <%@include file="includes/footer.inc"%>
