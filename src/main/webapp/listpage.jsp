<%-- 
    Document   : listpage
    Created on : 19 Nov, 2017, 4:58:27 AM
    Author     : palashsarkar
--%>

<%@page import="java.util.List"%>
<%@page import="com.aps.entitiespojos.Places"%>
<%@page import="com.aps.entitiespojos.Address"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
          <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <title>Listing Page</title>
     </head>
     <body bgcolor="#DBB247">
          <h1><%out.print(request.getAttribute("typoflst"));%></h1>
          <hr/>
          <hr/>
        <div id="list">
            <table id="places"  border="1">
                <tr>
                    <th colspan="2">List Of Places</th>
                </tr>
                <tr> 
                <td>Place ID</td>
                <td>Place Name</td>
                <td>Place Type</td>
                <td>Place Locality</td>
                <td>Place City</td>
                <td>Place Pincode</td>
                <td>Place State</td>
                <td>Place Country</td>
                <td>Place Description</td>
                </tr>
                <% List<Places> lst = (List<Places>)request.getAttribute("lstofplcs");
                   for(Places pl:lst){ %>
                <tr>
                  <td><% out.print(pl.getPl_id()); %></td>
                  <td><% out.print(pl.getPname()); %></td>
                  <td><% out.print(pl.getPl_type()); %></td>
                  <td><% out.print((pl.getAddr()).getLocality()); %></td>
                  <td><% out.print((pl.getAddr()).getCity()); %></td>
                  <td><% out.print((pl.getAddr()).getPincode()); %></td>
                  <td><% out.print((pl.getAddr()).getState()); %></td>
                  <td><% out.print((pl.getAddr()).getCountry()); %></td>
                  <td><% out.print(pl.getPl_desc()); %></td>
                </tr>
                <% } %>
         
            </table>
        </div>
         <form id="fm1" >
                   
                         <a href="index.html">
                              <input id="back" type="button" value="Back to Home">
                         </a>
                    </form>
     </body>
</html>
