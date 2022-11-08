<%-- 
    Document   : TimeTable
    Created on : Oct 17, 2022, 12:24:14 AM
    Author     : ACER PRENDATOR
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:useBean id="help" class="until.DateTimeHelper"></jsp:useBean>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="margin: 1% 10%">
        <div>
            <h1 style="text-align: center"><span>FPT University Academic Portal</span></h1>
        </div>
        <div style="background: gainsboro">
            <span style="margin-left: 5%"> <a href="#">Home</a> | View Schedule</span>
            <span style="float: right; margin-right: 5%" > <a href="#">Logout</a> | CAMPUS: FPTU-Hòa Lạc</span>
        </div>
        <div align="center">
            <div style="padding: 2%">
        Activities for lecturer: <input type="text" readonly="readonly" value="${requestScope.lecturer.name}"/>
        <form action="timetable" method="GET">
            <input type="hidden" name="lid" value="${param.lid}"/>
            From: <input type="date" name="from" value="${requestScope.from}"/> 
            To: <input type="date" name="to" value="${requestScope.to}"/>
            <input type="submit" value="View"/> 
        </form>
            </div>
            <table border="1px" style="width: 100%">
                <tr style="background: blue;text-align: center">
                <td>Slot</td>
                <c:forEach items="${requestScope.dates}" var="d">
                    <td>${d}<br/>${help.getDayNameofWeek(d)}</td>
                    </c:forEach>
            </tr>
            <c:forEach items="${requestScope.slots}" var="slot">
                <tr  style="text-align: center">
                    <td>
                        Slot${slot.id}
                        <br/>${slot.description}
                    </td>
                    <c:forEach items="${requestScope.dates}" var="d">
                        <td>
                            <c:forEach items="${requestScope.sessions}" var="ses">                            
                                <c:if test="${help.compare(ses.date,d) eq 0 and (ses.timeslot.id eq slot.id)}" >
                                    <a href="takeatt?id=${ses.id}">${ses.group.name}-${ses.group.subject.name}</a>
                                    <br/>
                                    ${ses.room.name}
                                </c:if>
                            </c:forEach>
                        </td>
                    </c:forEach>
                </tr>
            </c:forEach>
        </table>
        </div>
    </body>
</html>