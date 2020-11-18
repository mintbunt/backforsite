<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Войти:</title>
</head>
<body>
<form name="form" action="<%=request.getContextPath()%>/LoginServlet" method="post">

    <table align="center">
        <tr>
            <td>Почта</td>
            <td><input type="text" name="username" /></td>
        </tr>
        <tr>
            <td>Пароль</td>
            <td><input type="text" name="password" /></td>
        </tr>
        <tr>
            <td><span style="color:red"><%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%></span></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Войти"></input><input type="reset" value="Сброс"></input>
                <input type="button" value="Зарегистрироваться" onClick='location.href="reqister.jsp"'></td>
        </tr>
    </table>
</form>
</body>
</html>
