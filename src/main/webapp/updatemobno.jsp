<%-- 
    Document   : updatemobno
    Created on : 30 Nov, 2017, 1:46:59 AM
    Author     : palashsarkar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>      
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>E-BURDWAN</title>
     <link rel="icon" href="images/favicon.ico" type="image/x-icon">
    <meta name="description" content="An interactive webpage for parcel booking ">
     <link rel="stylesheet" type="text/css" href="stylesheets/mainpage.css"/>
</head>

<body>

    <img src="images/direction-icon.png" alt="E-Burdwan" width="120" height="100" >
       <h1> <strong>E-Burdwan</strong></h1>
        
    <h2>
    Here you can change/update your mobile number.
    </h2>
    <form id="form15" method="GET" action="mainServlet">
         <input type="hidden" name="case" value="9">
         <input type = "hidden"
                 name = "uid" 
                 value = <%out.print("\""+request.getParameter("uid")+"\"");%>>
      <fieldset>
        <legend><strong>Set new mobile number</strong></legend>
        <p> 
          <br>
          <label><strong>Enter Mobile Number -</strong></label>
          <input type = "text"
                 name = "mobno" 
                 maxlength="10"
                  class="mytext"/><br>
            
          <button type = "submit"
                    class="sbutton">Submit</button>
            
        </p>
      </fieldset>
    </form>
    
     
    
</body>
</html>
