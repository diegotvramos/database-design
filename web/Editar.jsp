
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <%
       //CONECTANOD A LA BASE DE DATOS:
       Connection con;
       String url = "jdbc:mysql://localhost:3306/registro?zeroDateTimeBehavior=convertToNull";
            String Driver = "com.mysql.jdbc.Driver";
            String user = "root";
            String clave = "";
       Class.forName(Driver);
       con=DriverManager.getConnection(url,user,clave);
       //Emnpezamos Listando los Datos de la Tabla Usuario pero de la fila seleccionada
       PreparedStatement ps;
       ResultSet rs;
       int id=Integer.parseInt(request.getParameter("id"));
       ps=con.prepareStatement("select * from usuario where Id_Usuario="+id);
       rs=ps.executeQuery();
       while(rs.next()){
                         %>
        <div class="container">
            <h1>Modificar Registro</h1>
            <hr>
            <form action="" method="post" class="form-control" style="width: 500px; height: 400px">
                <!-- ID:
                <input type="text" readonly="" class="form-control" value="<%= rs.getInt("Id_Usuario")%>"/> -->
                Fecha:
                <input type="text" name="txtFecha" class="form-control" value="<%= rs.getString("Fecha")%>"/>
                
                 Nombres:
                <input type="text" name="txtNom" class="form-control" value="<%= rs.getString("Nombres")%>"/><br>
              
                DNI:
                <input type="text" name="txtDNI" class="form-control" value="<%= rs.getString("DNI")%>"/>
                
                
                 <br>
                <input type="submit" value="Guardar" class="btn btn-primary btn-lg"/>
                
                <a href="principal.jsp">Regresar</a>
            </form>
            <%}%>
        </div>
    </body>
</html>
<%
    String dni, nom, fecha;
       dni=request.getParameter("txtDNI");
       nom=request.getParameter("txtNom");
       fecha=request.getParameter("txtFecha");
       if(nom!=null && dni!=null && fecha!=null){
           ps=con.prepareStatement("update usuario set Nombres='"+nom+"', DNI='"+dni+"', Fecha='"+fecha+"'where Id_Usuario="+id);
           ps.executeUpdate();
           response.sendRedirect("principal.jsp");
       }
       
       
%>
