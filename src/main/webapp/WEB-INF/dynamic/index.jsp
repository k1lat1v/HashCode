<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Хэш код</title>
</head>
<body>
    <div style="display: flex; flex-direction: column; align-items: center; justify-content: center;">
        <form action="/hash" method="post">
            <input type="text" name="input">
            <input type="submit" value="Получить хэш код">
        </form>
        <c:if test="${getInput}">
            <p>Хэш код вашего сообщения:</p>
            <p><c:out value="${hashCode}"/></p>
        </c:if>
    </div>
</body>
</html>
