
$(document).ready(function() 
{	
	// Funciones navbar
	$("a.procesos-v").click(function(event) 
	{
		$("#capa").load("procesos_varios/principal.php");
        event.preventDefault();
	});

    $("a.usuario").click(function(event) 
	{
		$("#capa").load("usuarios/principal.php");
        event.preventDefault();
	});

    $("a.ventas").click(function(event) 
	{
		$("#capa").load("ventas/principal.php");
        event.preventDefault();
	});
});
