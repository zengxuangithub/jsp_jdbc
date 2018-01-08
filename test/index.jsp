<%@ page contentType="text/html;charset=UTF-8"  import="java.util.*"  language="java" errorPage="" %>
<%@ page import="java.sql.*"%>

<html>
        <head>

                <title>
                        my jsp page
                </title>
        </head>
        <body>


        <%
               

   try{   
    	//加载MySql的驱动类   
	Class.forName("com.mysql.jdbc.Driver") ;   
    }catch(ClassNotFoundException e)
    {   
      out.println("找不到驱动程序类 ，加载驱动失败！");   
      e.printStackTrace() ;   
    }   
				
     Connection conn=DriverManager.getConnection("jdbc:mysql://112.74.45.198/mthins","root","chairman521");
     Statement stmt=conn.createStatement();
     ResultSet rs=stmt.executeQuery("select  title  from goods");
				
	%>
				<table>
	<%
                while(rs.next())
                {

          %>


                        <tr>
                                <td>
                                <%=rs.getString(1) %>
                                </td>
                        </tr>
            <%
	    	}
	    %>
				
				</table>
				

        
        </body>
</html>
