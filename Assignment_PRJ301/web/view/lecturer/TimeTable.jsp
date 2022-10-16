<%-- 
    Document   : TimeTable
    Created on : Oct 17, 2022, 12:24:14 AM
    Author     : ACER PRENDATOR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        Lecturer: <input type="text" readonly="readonly" value="" />
        <form action="timetable" method="GET">
            <input type="hidden" name="lid" value="" />
            Date <br>
            From: <input type="date" name="from" value="" />
            To: <input type="date" name="to" value="" />
        </form>
        <table border="1px">
            <tr>
                <td>-</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
            </tr>
        </table>
            
    </body>
</html>
