<html>
<head>
<title> Report Card
</title>
<Style>
body{background-color:azure;}
  table{
  width:40%;
  marging:10px;
  padding:5px;
  text-align:center;
  font-size:20px;
  border: black solid 3px;
  border-radius:5px;
}
table th{
   font-weight:bold;
   border: black solid 2px; 
}
.grade{font-size:30px;
  font-weight:bold;
  border: solid black 2px;
width:40%;
}

</Style>
</head>
<body>
<center>
  <h1><b>Report Card </b></h1><br>

<%
   if(session.getAttribute("english")!=null)
    {
    int eng = (Integer)session.getAttribute("english");
     int hin = (Integer)session.getAttribute("hindi");
     int mar = (Integer)session.getAttribute("marathi");
    int sci = (Integer)session.getAttribute("science");
    int maths = (Integer)session.getAttribute("maths");
  
    
    
      

%>
 <table>
 
  <th>Subject </th>
  <th>Obtained Marks </th>
  <th>Out of </th>
 
  <tr>
   <td>English</td>
   <td><% out.println(eng); %></td>
   <td>100 </td>
   </tr>
  
   <tr>
   <td>Hindi</td>
   <td><% out.println(hin); %></td>
   <td>100 </td>
   </tr>

   <tr>
   <td>Marathi</td>
   <td><% out.println(mar); %></td>
   <td>100 </td>
   </tr>

   <tr>
   <td>Science</td>
   <td><% out.println(sci); %></td>
   <td>100 </td>
   </tr>

   <tr>
   <td>Mathmatics</td>
   <td><% out.println(maths); %></td>
   <td>100 </td>
   </tr>

   <tr>
   <td>Total</td>
   <td><% out.println(eng + hin + mar + sci + maths); %></td>
   <td>500 </td>
   </tr>

</table>
<div class="grade">
<%     
     if(eng<35 || hin <35 || mar <35|| sci < 35 || maths<35)
          out.println("Failed (Min marks to pass in any subject is 35.)");
     else{

    int sum = eng + hin + mar + sci + maths;
    double percent = sum/5;  
      out.println("Percentage : " + percent ); 
       if(percent>90)
         out.println("   Grade A+");
       else if(percent>80)
         out.println("   Grade A");
       else if(percent>70)
         out.println("   Grade B+");
       else if(percent>60)
         out.println("   Grade B");
       else if(percent>50)
         out.println("   Grade C");
       else if(percent>40)
         out.println("   Grade D");
       else if(percent>35)
         out.println("Fail");
       
       }
 }
else
  response.sendRedirect("index.jsp");
%></div>
<br><br>
<form>
  <input type="submit" value="back" name="btn" style="margin:6px; padding:0px; color:Black; width:10%; height:40px; border-radius:10px; font-size:25px;" />
</form>

<%
  if(request.getParameter("btn")!= null)
  {
    response.sendRedirect("index.jsp");
}
%>


</center>
</body>

</html>