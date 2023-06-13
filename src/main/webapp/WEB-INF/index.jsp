<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <title>Fruit Store</title>
    <style>
        .fruit-table {
            border-collapse: collapse;
            width: 100%;
        }

        .fruit-table th, .fruit-table td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        .fruit-table .fruit-item.orange {
            color: orange;
        }
    </style>
</head>
<body>
    <h1>Fruit Store</h1>
    <table class="fruit-table">
        <tr>
            <th>Fruit</th>
            <th>Price</th>
        </tr>
        <c:forEach var="fruit" items="${fruits}">
            <tr class="fruit-item ${fruit.name.startsWith('G') ? 'orange' : ''}">
                <td>${fruit.name}</td>
                <td>$${fruit.price}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
