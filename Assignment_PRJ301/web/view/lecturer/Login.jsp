<%-- 
    Document   : Login
    Created on : Nov 7, 2022, 11:24:24 PM
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
        <div style="display: flex; ">
            <<img style="position: absolute" src="./img/DH-FPT.jpg" width="100%" height="700px" alt="alt"/>

            <div style="position: relative; margin: auto; margin-top: 20%; background: gray;"  >
                <form style="height:  250px; width: 450px" action="Login" method="POST">
                    <h3 style="margin: 30px 110px" >Username:<h3/> <input style="margin: 0 110px" type="text" name="username" /><br/>
                        <h3 style="margin: 0px 110px" >Password:<h3/> <input style="margin: 0 110px" type="password" name="password" /><br/>
                    <input style="margin: 10px 110px; width: 30%; background: orange" type="submit" value="Login" />
                </form>

            </div>

        </div>
    </body>
</html>
