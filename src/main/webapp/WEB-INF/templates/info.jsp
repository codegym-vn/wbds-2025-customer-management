<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Customer Detail</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f8f8f8;
        }
        .customer-info-container {
            border: 1px solid #ccc;
            padding: 20px;
            width: 400px;
            margin: 20px 0;
            box-shadow: 2px 2px 5px rgba(0,0,0,0.1);
            background-color: #fff;
        }
        .customer-info-container h2 {
            margin-top: 0;
            border-bottom: 1px solid #eee;
            padding-bottom: 10px;
            font-size: 1.5em;
            color: #007bff;
        }
        .customer-info-container p {
            display: flex;
            align-items: center;
            margin-bottom: 15px;
        }
        .customer-info-container p strong {
            width: 90px; /* Căn chỉnh nhãn */
            display: inline-block;
            margin-right: 10px;
            color: #555;
        }
        .customer-info-container input[type="text"] {
            flex-grow: 1; /* Làm cho ô input chiếm hết không gian còn lại */
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 1em;
        }
        .customer-info-container button {
            background-color: #28a745; /* Màu xanh lá cây */
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 1.1em;
            margin-top: 20px;
            transition: background-color 0.3s ease;
        }
        .customer-info-container button:hover {
            background-color: #218838;
        }
        a {
            color: #6c757d;
            text-decoration: none;
            margin-top: 20px;
            display: inline-block;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="customer-info-container">
    <h2>Customer Information</h2>
    <form action="${pageContext.request.contextPath}/customers" method="post">
        <p>
            <strong>Id:</strong>
            <input type="text" name="id" value="<c:out value="${customer.id}"/>" readonly>
        </p>
        <p>
            <strong>Name:</strong>
            <input type="text" name="name" value="<c:out value="${customer.name}"/>">
        </p>
        <p>
            <strong>Email:</strong>
            <input type="text" name="email" value="<c:out value="${customer.email}"/>">
        </p>
        <p>
            <strong>Address:</strong>
            <input type="text" name="address" value="<c:out value="${customer.address}"/>">
        </p>
        <button type="submit">Update</button>
    </form>
</div>
<p><a href="${pageContext.request.contextPath}/customers">Back to list</a></p>
</body>
</html>