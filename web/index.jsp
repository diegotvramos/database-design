<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container col-lg-3" >
            <form action="Controlador" >
                <div class="form-group text-center"><br>
                <img src="img/usuario.png" height="80" width="80" />
                <p><strong>Bienvenidos al sistema de Login</strong></p>
                </div>
                <div class="form-group">
                    <label>
                        Nombres:
                    </label>
                    <input class="form-control" type="text" name="txtnom" placeholder="Ingrese su usuario" >
                </div>
                <div class="form-group">
                    <label>
                        Password:
                    </label>
                    <input type="password" name="txtCorreo" placeholder="Ingrese su Password" class="form-control" >
                    
                </div>
                <input class="btn btn-danger btn-block" type="submit" name="accion" value="Ingresar" >
                
            </form>
        </div>
            
            
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    </body>
</html>
