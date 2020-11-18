<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Зарегистрироваться</title>
    <script>
        function validate()
        {
            var email = document.form.email.value;
            var username = document.form.username.value;
            var password = document.form.password.value;
            var conpassword= document.form.conpassword.value;

            const endPattern = "@gmail.com";
            const endPattern2 = "@mail.ru";
            const endPattern3 = "@yandex.ru";


             if (email==null || email=="")
            {
                alert("Поле 'Почта' не может быть пустым.");
                return false;
            }
             else if (username==null || username=="")
            {
                alert("Поле 'Псевдним' не может быть пустым.");
                return false;
            }
            else if(password.length<6)
            {
                alert("Пароль должен быть не менее 6 символов.");
                return false;
            }
            else if (password!=conpassword)
            {
                alert("Пароли должны совпадать.");
                return false;
            }
             if(!email.endsWith(endPattern)) {
                 if (!email.endsWith(endPattern2)) {
                     if (!email.endsWith(endPattern3)) {
                         alert("Почта должна иметь один из указанных доменов: @gmail.com, @mail.ru, @yandex.ru");
                         return false;
                     }
                 }
             }
        }
    </script>
</head>
<body>
<center><h2>Регистрация </h2></center>
<form name="form" action="ReqisterServlet" method="post" onsubmit="return validate()">
    <table align="center">
        <tr>
            <td>Почта</td>
            <td><input type="text" name="email"/></td>
        </tr>
        <tr>
            <td>Псевдоним</td>
            <td><input type="text" name="username"/></td>
        </tr>
        <tr>
            <td>Пароль</td>
            <td><input type="password" name="password"/></td>
        </tr>
        <tr>
            <td>Подтверждение пароля</td>
            <td><input type="password" name="conpassword"/></td>
        </tr>
        <tr>
            <td><%=(request.getAttribute("errMessage") == null) ? ""
                    : request.getAttribute("errMessage")%></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Зарегистрироваться"></input><input
                    type="reset" value="Сброс"></input>
                <input type="button" value="Назад" onclick="history.back();return false;"></td>
        </tr>
    </table>
</form>
</body>
</html>
