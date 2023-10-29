<head >
<title> Grade Calculator</title>
<Style>
 *{background-color:azure;}
.form{
   width:37%;
   border:black solid 5px;
   border-radius:25px;
   font-size:30px;
   margin:20px;
   padding:20px;
   font-size:30px;
  background-color:grey;
}
.form label{
     font-size:30px;
     background-color:grey;
}

.form input{width:45%;
   height:30px;
   text-align:center;
   font-size:25px;
   color:black;
   margin:10px;
   padding:10px;  
   border-radius:10px; 
}

.exp{font-size:30px;
font-weight:bold;}


</Style>

</head>

<body>
<center>
 <h1><b> Grade Calculator</b></h1>
 <form method="POST" class="form">
   <label>Enter English marks:</label><br>
  <input type='number' placeholder="between 0 to 100" name="english" required/><br>
   <label>Enter Hindi marks   :</label><br>
  <input type='number' placeholder="between 0 to 100" name="hindi"  required/><br>
   <label>Enter Marathi marks:</label><br>
  <input type='number' placeholder="between 0 to 100" name="marathi" required/><br>
   <label>Enter Science marks:</label><br>
  <input type='number' placeholder="between 0 to 100" name="science" required/><br>
   <label>Enter Maths marks:</label><br>
  <input type='number' placeholder="between 0 to 100" name="Maths"  required/><br>
  <input type='submit' value='calculate' name='btn' style="margin:6px; padding:0px; color:Black; width:25%; height:40px; border-radius:10px;" />

</form>
<div class="exp">
<%
   if(request.getParameter("btn") !=null)
{
   int eng = Integer.parseInt(request.getParameter("english"));
   int hin = Integer.parseInt(request.getParameter("hindi"));
   int mar = Integer.parseInt(request.getParameter("marathi"));
   int sci = Integer.parseInt(request.getParameter("science"));
   int maths = Integer.parseInt(request.getParameter("Maths"));

  if(eng>100 || eng<0)
   out.println("english marks must be between 0 to 100");
  else if(hin>100 || hin<0) 
   out.println("Hindi marks must be between 0 to 100");
  else if(mar>100 || mar<0)
   out.println("Marathi marks must be between 0 to 100");
  else if (sci<0 || sci >100)
   out.println("science marks must be between 0 to 100");
  else if (maths>100 || maths<0)
  out.println("Maths marks must be between 0 to 100");
  
  else
   {
     
    request.getSession().setAttribute("english",eng);
    request.getSession().setAttribute("hindi",hin);
    request.getSession().setAttribute("marathi",mar);
    request.getSession().setAttribute("science",sci);
    request.getSession().setAttribute("maths",maths);

    response.sendRedirect("Result.jsp");  
   }
   
   

}

%>
</div>
</center>
</body>
