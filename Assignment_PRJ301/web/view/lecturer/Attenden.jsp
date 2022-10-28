<%-- 
    Document   : Attenden
    Created on : Oct 23, 2022, 10:51:59 PM
    Author     : ACER PRENDATOR
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
        <div style="padding: 2% 0%">
        Take attendence for group: ${requestScope.ses.group.name} <br/>
        Subject: ${requestScope.ses.group.subject.name} <br/>
        Room: ${requestScope.ses.room.name} <br/>
        Date: ${requestScope.ses.date} Slot ${requestScope.ses.timeslot.description}<br/>
        Attended: <span style="color: red;"> ${requestScope.ses.attandented?"Yes":"No"} </span>
        </div>
        <form action="takeatt" method="POST">
            <input type="hidden" name="sesid" value="${param.id}" /> 
            <table border="0px" style="width: 100%">
                <tr style="background: blue;text-align: center">
                    <td>No.</td>
                    <td>StudentId</td>
                    <td>Full Name</td>
                    <td>Present</td>
                    <td>Absent</td>
                    <td>Description</td>
                </tr>
                <c:forEach items="${requestScope.ses.attandances}" var="a" varStatus="loop" >
                    <tr style="text-align: center">
                        <td>${loop.index+1}</td>
                        <td>${a.student.id}<input type="hidden" name="stdis" value="${a.student.id}" /></td>
                        <td>${a.student.name}</td>
                        <td><input type="radio" 
                                   <c:if test="${a.present}"> 
                                       checked="checked" 
                                   </c:if>
                                       name="present${a.student.id}" value="present" />
                        </td>
                        <td><input type="radio" 
                                   <c:if test="${a.present}"> 
                                       checked="checked" 
                                   </c:if>
                                       name="present${a.student.id}" value="absent" />
                        </td>
                        <td><input type="text" name="description${a.student.id}" value="${a.description}" /></td>
                    </tr>
                </c:forEach>
            </table>
            <div style="float: right;margin-right: 10%">
            <input type="submit" value="save" />
            <div/>
        </form>
    </body>
</html>
