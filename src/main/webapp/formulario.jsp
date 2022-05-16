
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="estilos/form.css" rel="stylesheet" type="text/css" />
        <link rel="shortcut icon" href="imagenes/roshkaicon.ico" sizes="any" />
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <link rel="stylesheet" media="(max-width: 800px)" href="example.css" />
        <title>Formulario Postulante</title>
    </head>

    <body>
    <header>
          <div class="logo">
            <img src="imagenes/logo-roshka.svg" alt="log-roshka" />
          </div>
        </header>
        <main class="create">
   <article class="contenedor">
            <div>
                <p class="enter">Si sigues interesado y cumples con los requisitos, completa el siguiente formulario: </p>

                <form method="post" action="SaveServlet" class="form">

                    <label class="mr-2" for="nombre">Ingrese su Nombre:</label>
                    <input required id="nombre" name="nombre" type="text"><br>

                    <label for="apellido">Ingrese su Apellido:</label>
                    <input required id="apellido" name="apellido" type="text"><br>

                    <label for="cedula">Numero de cedula:</label>
                    <input required id="cedula" name="cedula" type="number"><br>

                    <label for="correo">Correo:</label>
                    <input required id="correo" name="correo" type="email"><br>

                    <label for="telefono">Telefono:</label>
                    <input required id="telefono" name="telefono" type="text"><br>

                    <label for="direccion">Direccion:</label>
                    <input required id="direccion" name="direccion" type="text"><br>


                    <%@ page import="com.roshka.proyectofinal.entity.Lenguaje, com.roshka.proyectofinal.lenguaje.LenguajeDao, java.util.List,java.util.Iterator" %>

                        <%
                LenguajeDao lenDao = new LenguajeDao();
                List<Lenguaje> listLenguaje = lenDao.listar();
                Iterator<Lenguaje> iter =  listLenguaje.iterator();
                            Lenguaje len = null;
   
   
                %>
                            <ul>
                                <% while(iter.hasNext()){
                        len = iter.next();

                    %>
                                    <li class="d-flex check-inline" >
                                        <label  for=<%=len.getNombre_lenguaje() %> > <%= len.getNombre_lenguaje() %> </label><input value=<%=len.getId() %> id=
                                        <%=len.getNombre_lenguaje() %> name=
                                            <%=len.getNombre_lenguaje() %> type="checkbox"><br>
                                    </li>

                                    <% } %>

                            </ul>
                        <li class="d-flex">
                        <label for="experiencia_laboral"  >Experiencia laboral</label>
                        </li>
                                            <!-- Si no lo marca el valor que envia es null y si lo marca es "ON" -->
                                            <input id="experiencia_laboral" name="experiencia_laboral" type="checkbox" ><br>
                                            <p for="experiencia_programando">Lenguajes de programacion que conoces:</p>

                            <label for="notebook">Cuenta con notebook</label>
                             <input id="notebook" name="notebook" type="checkbox"><br>

                            <label for="universidad">Estudio Universitario </label>
                            <input id="universidad" name="universidad" type="checkbox"><br>

                            <input class="enviar info error" type="submit">
                            <input class="borrar" type="reset" value="Borrar"><br>

                               <label for="otro">otro</label>
                                                         <input id="otro" name="otro" type="checkbox"><br>
                            <a href="index.html">volver</a>

                </form>

</article>


        </main>
    </body>
    </html>

<style>


/* el header donde va el logo y el menu  */
html,body{
    background-image: url(imagenes/descarga.svg);

}
/* damos los estilos a todo lo que contiene el body  */
body{
    background-color: rgba(11, 49, 110, 0.75);
    font-family:Calibri, Candara, Segoe, Segoe UI, Optima, Arial, sans-serif;
    color: wheat;
    font-weight: bold;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 160%;}

}
/* para el logo */
img{
    width: 165px;
    padding: 10px;
}

p.enter{
    text-align: center;
    font-size: 20px;
}
/* para el parrafo */
p:hover{
    color: yellow;
}

/* para el create o sea para el main */
.create{
    width: 100%;
    max-width: 785px;
    min-width: 320px;
    border-radius: 15px;
    background-color: rgba(11, 49, 110, 0.75);
    padding: 1rem;

}
/* contenedor */
/* para el forrmulario */
.form label{
   display: block;
   border: none;
   align-items:center;


}

.form input{
    display: block;
    border: none;
    width: 50%;
    align-items:center;
}
.form input[type="email"],.form input[type="text"],.form input[type="number"]{
   background-color: transparent;
    border-radius: 10px;
    border: 1px solid #000;

}
.form input:hover{
    background-color: wheat;
}



a{
    text-decoration: none;
}
ul{
list-style:none;
font-size:15px;
}

a{
text-decoration:none;
color:black;
background-color: #21211d;
border-radius: 10px;
  color: #FFF;
  padding: 10px;
  margin:15px;
  text-decoration: none;
  cursor: pointer;
  background-image: url(imagenes/descarga.svg);
}
 .form input[type="reset"] , .form input[type="submit"]{
        text-decoration:none;
        background-color: rgba(11, 49, 110, 0.75);
          background-image: url(imagenes/descarga.svg);
        border-radius: 5px;;
        padding: 10px;
        border-radius: 10px;
        margin:10px;
        text-decoration: none;
        color:#ffff;
        text-align:left;
        cursor: pointer;
        width:80px;
        text-align:center;
    }
/*hola mundo*/

input#ruby,input#python,input#c,input#javascript,input#java{
width:30px;

}
input#experiencia_laboral,input#notebook,input#universidad{
width:500px;
}


/* para el alert  */
.alert {
 padding: 10px;
 background-color: background-color: #2196F3;
 color: white;
}

.alert.info {background-color: #2196F3;}
.alert.error {background-color:  #ff0000;}
.closebtn {
  margin-left: 15px;
  color: white;
  font-weight: bold;
  float: right;
  font-size: 22px;
  line-height: 20px;
  cursor: pointer;
  transition: 0.3s;
}

.closebtn:hover {
  color: black;
}

</style>

<script>
var close = document.getElementsByClassName("enviar");
var i;

for (i = 0; i < close.length; i++) {
  close[i].onclick = function(){
    var div = this.parentElement;
    div.style.opacity = "0";
    setTimeout(function(){ div.style.display = "none"; }, 600);
  }
}
</script>