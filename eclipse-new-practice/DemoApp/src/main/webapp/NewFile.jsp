<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculator</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f0f0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }

    form {
        max-width: 400px;
        background-color: #ffffff;
        padding: 20px;
        border: 1px solid #cccccc;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        text-align: center;
    }

    label {
        display: block;
        margin-bottom: 10px;
    }

    .form-group {
        margin-bottom: 15px;
    }

    input[type="text"] {
        width: calc(100% - 22px);
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #cccccc;
        border-radius: 3px;
        box-sizing: border-box;
    }

    .btn-group {
        display: flex;
        justify-content: center;
    }

    input[type="submit"] {
        width: 80px;
        margin: 0 5px;
        background-color: #007bff;
        color: #ffffff;
        border: none;
        cursor: pointer;
        transition: background-color 0.3s;
    }

    input[type="submit"]:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
    <form action="AddServlet">
        <div class="form-group">
            <label for="num1">Number 1</label>
            <input type="text" id="num1" name="num1" placeholder="Enter Number 1">
        </div>
        <div class="form-group">
            <label for="num2">Number 2</label>
            <input type="text" id="num2" name="num2" placeholder="Enter Number 2">
        </div>
        <div class="btn-group">
            <input type="submit" class="btn btn-primary" name="button" value="+">
            <input type="submit" class="btn btn-primary" name="button" value="-">
            <input type="submit" class="btn btn-primary" name="button" value="*">
            <input type="submit" class="btn btn-primary" name="button" value="/">
        </div>
        <br/>
        <h1>Answer = <%= request.getParameter("ans") %></h1>
    </form>
    
</body>
</html>
