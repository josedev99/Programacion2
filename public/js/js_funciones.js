//Funciones
$(document).ready(function(){
    $("a.inventario").click(function(event){
        $("#capa").load("inventario/principal.php");
        event.preventDefault();
    })
    $("a.usuario").click(function(event){
        $("#capa").load("usuarios/principal.php");
        event.preventDefault();
    })
    $("a.ventas").click(function(event){
        $("#capa").load("ventas/principal.php");
        event.preventDefault();
    })
})