<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
  <style>

    nav{
      background-color: black;
      width: 100%;
    }

    #nav-logo-img{
      padding: 0% 2%;
      width: 75px;
      height: 75px;
    }
    .nav-logo{
      color: white;
    }

    .nav-btn{
      background-color: blue;
      color: white;
      border-radius: 5%;
      border: 1px solid blue;

    }

    body {
      background-color: black;
      color: white;
    }

    h2 {
      color: white;
    }

    div{background-color: black;

    }
    table {
      color: white;
      font-size: 12px;
    }

    .table-container > div {
      flex-grow: 1;
    }

    th{
      color: white;
    }
    td{
      color: white;
    }
    table{
      align-items: center;
      text-align: center;
    }

  </style>
</head>
<body>
<nav class="d-flex justify-content-between align-items-center p-2">
  <div class="d-flex justify-content-between align-items-center nav-logo" style="width: 40%">
    <img id="nav-logo-img" src="${pageContext.request.contextPath}/images/hyperliquid1.gif">
    <div class="d-flex">
      <h3 style="margin-left: 5px;font-family: 'Libre Baskerville';">Wallet<h3 style="font-style: italic;font-family: 'Libre Baskerville'">liquid</h3></h3>
    </div>
    <a href="/trade" class="text-muted text-decoration-none" ><h5>Trade</h5></a>
    <a href="/leaderboard" class="text-muted text-decoration-none" ><h5>Leaderboard</h5></a>
  </div>
  <div class="d-flex w-25 justify-content-around">
    <h3>Welcome ${user.firstName}</h3>
    <img src="${pageContext.request.contextPath}${user.image}" alt="Not found" width="50px" height="50px" style="background-color: white; border: white 2px solid"/>
    <a href="/logout"><button class="p-2 nav-btn">Log out</button></a>
  </div>
</nav>
<main class="w-100 p-4">
  <table class="table">
    <thead>
    <th scope="col">Time</th>
    <th scope="col">Pair</th>
    <th scope="col">Amount</th>
    <th scope="col">Leverage</th>
    <th scope="col">Entry Price</th>
    <th scope="col">last Price</th>
    <th scope="col">Earnings</th>
    </thead>
    <tbody>
    <c:forEach var="transaction" items="${transactionList}">
      <tr>
        <td>${transaction.createdAt}</td>
        <c:if test="${transaction.direction eq 'long'}">
          <td class="text-success">${transaction.symbol}-USD</td>
        </c:if>
        <c:if test="${transaction.direction eq 'short'}">
          <td class="text-danger">${transaction.symbol}-USD</td>
        </c:if>
        <td>${transaction.amount}</td>
        <td>${transaction.leverage}x</td>
        <td>${transaction.price}</td>
        <td>${transaction.lastPrice}</td>
        <c:if test="${transaction.earnings <0}">
          <td class="text-danger">${transaction.earnings}</td>
        </c:if>
        <c:if test="${transaction.earnings >= 0}">
          <td class="text-success">${transaction.earnings}</td>
        </c:if>
      </tr>
    </c:forEach>
    </tbody>
  </table>
</main>
</body>
</html>