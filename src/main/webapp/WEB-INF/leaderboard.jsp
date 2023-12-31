<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/leaderboard.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body class="special-darkgreen">
<nav class="d-flex justify-content-between align-items-center p-2">
    <div class="d-flex justify-content-between align-items-center nav-logo nav-brand">
        <div class="d-flex align-items-center">
            <a class="d-flex" href="/trade"><img id="nav-logo-img" src="${pageContext.request.contextPath}/images/hyperliquid1.gif"></a>
            <a class="d-flex text-decoration-none text-white" href="/trade"><h3>Wallet<h3 style="font-style: italic;">liquid</h3></h3></a>
        </div>
        <a href="/trade" class="text-muted text-decoration-none" ><h5>Trade</h5></a>
        <a href="/history/${user.id}" class="text-muted text-decoration-none" ><h5>Trade History</h5></a>
        <c:if test="${user.roles.get(0).name.contains('ROLE_SUPER_ADMIN') || user.roles.get(0).name.contains('ROLE_ADMIN')}">
            <a href="/admin" class="text-muted text-decoration-none"><h5>Admin</h5></a>
        </c:if>
    </div>
    <div class="d-flex nav-brand justify-content-around">
        <h3>Welcome ${user.firstName}</h3>
        <a href="/history/${user.id}" class="d-flex"><img src="${pageContext.request.contextPath}${user.image}" alt="Not found" width="50px" height="50px" style="background-color: transparent"/></a>
        <form id="logoutForm" method="POST" action="/logout">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            <input class="p-2 nav-btn" type="submit" value="Logout!" />
        </form>
    </div>
</nav>
<main class="m-4 p-4 special-green">
    <table class="table">
        <thead>
        <th scope="col" class="col-2">Rank</th>
        <th scope="col" class="col-2">PFP</th>
        <th scope="col" class="col-4">User</th>
        <th scope="col" class="col-4">Portfolio Value</th>
        </thead>
        <tbody>
        <c:forEach var="user" items="${userList}" varStatus="loop">
            <tr>
                <td><h4>${loop.index + 1}</h4></td>
                <td><img src="${pageContext.request.contextPath}${user.image}" alt="not found" width="25px" height="25px"></td>
                <td><h4><a href="/leaderboard/${user.id}" class="text-decoration-none">${user.firstName} ${user.lastName}</a></h4></td>
                <td><h4>${user.usd}</h4></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</main>
</body>
</html>
