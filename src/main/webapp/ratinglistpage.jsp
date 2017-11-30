<%-- 
    Document   : listpage
    Created on : 19 Nov, 2017, 4:58:27 AM
    Author     : palashsarkar
--%>

<%@page import="com.aps.entitiespojos.UserRatings"%>
<%@page import="java.util.List"%>
<%@page import="com.aps.entitiespojos.Places"%>
<%@page import="com.aps.entitiespojos.Address"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
          <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <title>Rating Listing Page</title>
     </head>
     <body bgcolor="#DBB247">
          <h1><%out.print(request.getAttribute("typoflst"));%></h1>
          <hr/>
          <hr/>
        <div id="list2">
            <% List<Object> lst=(List<Object>)request.getAttribute("lstofratings");
                Places pl = (Places)lst.get(0);
            %>
            <table id="placedetails"  border="1">
                <tr>
                    <th colspan="2">Place Details</th>
                </tr>
                <tr> 
                <td>PLace ID</td>
                <td>Place Name</td>
                <td>Place Type</td>
                <td>Place Locality</td>
                <td>Place City</td>
                <td>Place Pincode</td>
                <td>Place State</td>
                <td>Place Country</td>
                <td>Place Description</td>
                </tr>
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
            </table>
                 <% double avg = 0.0;
                     double sum = 0.0;
                     double num = 0.0;
                    for(UserRatings ur:(List<UserRatings>)lst.get(1))
                    {
                        sum = sum + Double.parseDouble(ur.getRat());
                        num++;
                    }
                    avg = sum/num;
                  %>
                  <h2>Average Rating: <%out.print(avg);%></h2>
                  <ul>
                       <% List<UserRatings> lur = (List<UserRatings>)lst.get(1);
                           List<Object[]> oa = (List<Object[]>)lst.get(2);
                           int cnt = 0;
                           for(UserRatings ur : lur ){
                       %>
                       <li>
                            <%out.print("UserName : "+(oa.get(cnt))[0]+" "+(oa.get(cnt))[1]+"\n"+" Rating Given :"+ur.getRat());%><br/>
                            <%out.print("Comments : "+ur.getComm());%>
                       </li>
                       <% cnt++; } %>
                  </ul>
        </div>
         <form id="fm2" >
                   
                         <a href="index.html">
                              <input id="back" type="button" value="Back to Home">
                         </a>
         </form>
     </body>
</html>
