<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<jsp:include page="fragments/headTag.jsp"/>
<body>
<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header navbar-brand"><fmt:message key="app.title"/></div>
        <div class="navbar-collapse collapse">
            <form:form class="navbar-form navbar-right" role="form" action="spring_security_check" method="post">
                <div class="form-group">
                    <input type="text" placeholder="Email" class="form-control" name='username'>
                </div>
                <div class="form-group">
                    <input type="password" placeholder="Password" class="form-control" name='password'>
                </div>
                <button type="submit" class="btn btn-success">Sign in</button>
            </form:form>
        </div>
    </div>
</div>

<div class="jumbotron">
    <div class="container">
        <c:if test="${error}">
            <div class="error">
                    ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
            </div>
        </c:if>
        <c:if test="${not empty message}">
            <div class="message">
                <fmt:message key="${message}"/>
            </div>
        </c:if>
        <p>

        <p>User login: <b>user@yandex.ru / password</b></p>

        <p>Admin login: <b>admin@gmail.com / admin</b></p>

        <p><a class="btn btn-primary btn-lg" role="button" href="register">Register &raquo;</a></p>

        <p>Technology stack: <a href="http://projects.spring.io/spring-security/">Spring Security</a>,
            <a href="http://docs.spring.io/spring/docs/current/spring-framework-reference/html/mvc.html">Spring MVC</a>,
            <a href="http://projects.spring.io/spring-data-jpa/">Spring Data JPA</a>,
            <a href="http://spring.io/blog/2014/05/07/preview-spring-security-test-method-security">Spring Security
                Test</a>,
            <a href="http://hibernate.org/orm/">Hibernate ORM</a>,
            <a href="http://hibernate.org/validator/">Hibernate Validator</a>,
            <a href="http://www.slf4j.org/">SLF4J</a>,
            <a href="https://github.com/FasterXML/jackson">Json Jackson</a>,
            <a href="http://ru.wikipedia.org/wiki/JSP">JSP</a>,
            <a href="http://en.wikipedia.org/wiki/JavaServer_Pages_Standard_Tag_Library">JSTL</a>,
            <a href="http://tomcat.apache.org/">Apache Tomcat</a>,
            <a href="http://www.webjars.org/">WebJars</a>,
            <a href="http://dandelion.github.io/datatables/">Dandelion DataTables</a>,
            <a href="http://ehcache.org">Ehcache</a>,
            <a href="http://www.postgresql.org/">PostgreSQL</a>,
            <a href="http://junit.org/">JUnit</a>,
            <a href="http://hamcrest.org/JavaHamcrest/">Hamcrest</a>,
            <a href="http://jquery.com/">jQuery</a>,
            <a href="http://ned.im/noty/">jQuery notification</a>,
            <a href="http://getbootstrap.com/">Bootstrap</a>.</p>
    </div>
</div>
<div class="container">
    <div class="lead">
        &nbsp;&nbsp;&nbsp;Приложение с регистрацией/авторизацией пользователя и интерфейсом на основе ролей (ROLE_USER, ROLE_ADMIN).
        Администратор может управлять (редактировать/удалять/создавать) пользователями через UI (будем реализовывать на
        <a href="http://javawebinar.ru/topjava/">вебинаре</a>)
        и по REST интерфейсу с базовой авторизацией. Пользователь может ограниченно редактировать и просматривать свои
        данные
        (в том числе свои пользовательские параметры) также через UI и по REST.
        Приложение позволяет управлять пользовательскими данные (день, еда, калории) в таблице по AJAX.
        Возможна фильтрация данных по датам и времени, при этом цвет записи таблицы зависит от того, превышает ли сумма
        калорий за день норму (редактируемый параметр в профиле пользователя).
        Весь REST интерфейс покрывается JUnit тестами, используя Spring MVC Test и Spring Security Test
    </div>
</div>
<jsp:include page="fragments/footer.jsp"/>
</body>
</html>

