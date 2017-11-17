// Da formato a las tablas
$("#dataGrid").DataTable();
// $("#dataFrm").DataForm();

// ***************************************************************************
$(".icon--mobile").click(function(){
   $("header.main--nav").toggleClass("open--nav")
});


/*****************************************************************************/
/* VALIDA FORMULARIO (Creación de Tipos PDC)
/*****************************************************************************/
//Creditos: https://www.youtube.com/watch?v=4zGbxkYr85M
// <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
$(document).ready(function(){
    $("#button").click(function(){
/*
        var tipoPdcCodigo = $("#tipoPdcCodigo").val();
        var tipoPdcNombre = $("tipoPdcNombre").val();
        var tipoPdcDescripcion = $("tipoPdcDescripcion").val();
*/
        $("#tipoPdcCodigo_msn").fadeOut();
        if($("#tipoPdcNombre").val().length > 0 ){
            $("#tipoPdcNombre_msn").fadeOut();
            $('#dataFrmTipoPDC').submit();
        }else{
            $("#tipoPdcNombre").focus();
            $("#tipoPdcNombre_msn").fadeIn();
            return false;
        }
    });
});
