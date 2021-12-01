<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<fmt:setBundle basename="messages"/>

<html>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style/main.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style/table.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

    <title><fmt:message key='user.carDetails'/></title>
</head>
<body>

<div class="header">
    <%@ include file="/jsp/jspf/head.jspf" %>
</div>

<div id="demo">
    <h1><fmt:message key='user.carDetails'/></h1>

    <div class="container">

        <form action=<%= request.getContextPath() %>/controller method="get">
            <button class="btn btn-secondary" role="button" name="command" value="getOrders">
                <fmt:message key='admin.backToOrder'/></button>
        </form>

        <!-- Responsive table starts here -->
        <!-- For correct display on small screens you must add 'data-title' to each 'td' in your table -->
        <div class="table-responsive-vertical shadow-z-1">
            <!-- Table starts here -->
            <table id="table" class="table table-hover table-mc-light-blue">

                <thead>
                <tr>
                    <th scope="col"><fmt:message key='car.brand'/></th>
                    <th scope="col"><fmt:message key='car.model'/></th>
                    <th scope="col"><fmt:message key='car.numberOfSeats'/></th>
                    <th scope="col"><fmt:message key='car.category'/></th>
                    <th scope="col"><fmt:message key='car.description'/></th>
                </tr>
                </thead>

                <tbody>
                <c:forEach var="car" items="${carsList}">
                    <tr scope="row">

                        <td>${car.getBrand()}</td>
                        <td>${car.getModel()}</td>
                        <td>${car.getNumberOfSeats()}</td>
                        <td><fmt:message key='${car.getCategory()}'/></td>
                        <td>${car.getDescription()}</td>

                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
<div class="footer1">
    <%@ include file="/jsp/jspf/footer.jspf"%>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/style/tableJS.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</body>
</html>
