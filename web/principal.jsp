<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>     
        <title>JSP Page</title>
    </head>
    <body style="margin-top: 30px">      
        <%
            //CONECTANOD A LA BASE DE DATOS:
            Connection con;
            String url = "jdbc:mysql://localhost:3306/registro?zeroDateTimeBehavior=convertToNull";
            String Driver = "com.mysql.jdbc.Driver";
            String user = "root";
            String clave = "";
            Class.forName(Driver);
            con = DriverManager.getConnection(url, user, clave);
            PreparedStatement ps;
            //Emnpezamos Listando los Datos de la Tabla Usuario
            Statement smt;
            ResultSet rs;
            smt = con.createStatement();
            rs = smt.executeQuery("select * from usuario");
            //Creamo la Tabla:     
        %>
        <nav class="navbar navbar-dark bg-dark" >
            <h1> -</h1>>
            <!-- <a style="color: white" class="navbar-toggler" ><span class="navbar-toggler-icon" ></span> Home</a> -->
            <div class="dropdown" >
                <a style="color: white" href="#" class="
                   nav-link dropdown-toggle " data-toggle="dropdown" >Cerrar Session</a>
                <div class="dropdown-menu text-center" >
                    <a> <img src="img/avatar.jpeg" height="80" width="80" ></a>
                    <div><a><strong>${nom}</strong></a></div>
                    <div class="dropdown-divider"></div>
                    <a href="Controlador?accion=Salir" class="dropdown-item " >Salir</a>
                </div>
            </div>
        </nav>
        <div class="container mt-4 " >
             <!-- <h1>Bienvenido al sistema <strong style="text-transform: uppercase;">${nom}</strong></h1> -->
            <center><h1>Blog de Salud</h1></center>
        </div>
        
        <div class="container">            
            <button type="button" class="btn btn-success btn-lg" data-toggle="modal" data-target="#myModal">Nueva Entrada</button>
            <div style="padding-left: 800px">  
                <!-- buscador muy pronto -->
                <!-- <input type="text" class="form-control" value="Buscar"/> -->
                                            
            </div>
        </div>  
              
        <br>
        <div class="container"> 
            <table>
                <tbody id="tbodys">
                        <%
                            while (rs.next()) {
                        %>
                        
                        <!-- <tr><td class="text-center"><%= rs.getInt("Id_Usuario")%></td></tr>-->
                        <tr><td  class="text-justify"><%= rs.getString("Fecha")%></td></tr><br>
                        <tr><td><h2><strong><center class=""><%= rs.getString("Nombres")%></center></strong></h2></td></tr>
                            
                            <tr><td  class="text-justify"><%= rs.getString("DNI")%></td></tr>
                            
                            
                            
                            <td class="text-right">
                                
                                <!-- <input type="hidden" value="<//%= rs.getInt("Id_Usuario")%>" id="Editar"/>
                                <input type="submit" class="btn btn-warning" data-toggle="modal" data-target="#myModal1" value="Editar"/>  -->
                                <div> <h5 class="text-left" >Autor Administrador</h5><a style="text-align: right"href="Editar.jsp?id=<%= rs.getInt("Id_Usuario")%>"  class="btn btn-primary">Editar</a>
                                <a href="Delete.jsp?id=<%= rs.getInt("Id_Usuario")%>" style="text-align: right" class="btn btn-danger">Eliminar</a>
                               <br></div>
                                <br> 
                                <hr style="border-color:black;">
                                
                            
                            </td>
                        
                        <%}%>          
            </table>
        </div>
        
        <br>   
        <div class="container">          
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document" style="z-index: 9999; width: 450px">
                    <div class="modal-content">
                        <div class="modal-header">                            
                            <h4 class="modal-title" id="myModalLabel">Agregar Registro</h4>
                        </div>
                        <div class="modal-body">
                            <form action="" method="post">
                                
                                <label>Fecha:</label> 
                                <input type="text" name="txtFecha" class="form-control"/> 
                                <label>Nombres:</label> 
                                <input type="text" name="txtNom" class="form-control"/><br>
                                <label>DNI:</label> 
                                <input type="text" name="txtDNI" class="form-control"/> 
                                 
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                            
                                    <input type="submit" value="Guardar" class="btn btn-primary"/>
                                </div>
                            </form>
                        </div>
                    </div>                    
                </div>
            </div>
            <%
                String dni, nom, fecha;
                nom = request.getParameter("txtNom");
                dni = request.getParameter("txtDNI");
                fecha = request.getParameter("txtFecha");
                if (nom != null && dni != null && fecha != null) {
                    ps = con.prepareStatement("insert into usuario(Nombres, DNI, Fecha)values('" + nom + "','" + dni + "','" + fecha + "')");
                    ps.executeUpdate();
                    response.sendRedirect("principal.jsp");

                }
            %>
        </div>        
        <script src="js/jquery.js" type="text/javascript"></script>             
        <script src="js/bootstrap.min.js" type="text/javascript"></script>  
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>        

    </body>
</html>
