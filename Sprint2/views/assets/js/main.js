// Da formato a las tablas
$(document).ready( function () {
     $("#dataGrid").DataTable({
      "language":{
       "lengthMenu":"Mostrar _MENU_ registros por página.",
       "zeroRecords": "Lo sentimos. No se encontraron registros.",
             "info": "Mostrando página _PAGE_ de _PAGES_",
             "infoEmpty": "No hay registros aún.",
             "infoFiltered": "(filtrados de un total de _MAX_ registros)",
             "search" : "Búsqueda",
             "LoadingRecords": "Cargando ...",
             "Processing": "Procesando...",
             "SearchPlaceholder": "Comience a teclear...",
             "previous": "Anterior",
             "next": "Siguiente",
             "paginate": {
             "previous": "Anterior",
             "next": "Siguiente",
     }
      }
     });
 } );// $("#dataFrm").DataForm();

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



/*****************************************************************
 ** VALIDAMOS QUE EXISTA EL CORREO al dar FOCUS PASSW  **
 *****************************************************************/
$("#txtpass").focus(function(){
  $("#txtemail").siblings("span").remove();
  var email = $("#txtemail").val();
  $.post("acceso/validoEmail",{email:email},function(data){
          var data = JSON.parse(data);
          $("#txtemail").siblings("label").after("<span class='error'>"+data[0]+"</span>");

          if(data[1] == false){
            $("#btnLogin").attr("disabled",true);
          }else{
            $("#btnLogin").attr("disabled",false);
          }
  });
});




/***********************************************************************
 ** VALIDAMOS QUE no EXISTA EL CORREO para el new user                **
 ***********************************************************************/
$("#txtpassNew").focus(function(){

  $("#txtemailNew").siblings("span").remove();
  var email = $("#txtemailNew").val();
  $.post("acceso/validoEmailNew",{email:email},function(data){
          var data = JSON.parse(data);
          $("#txtemailNew").siblings("label").after("<span class='error'>"+data[0]+"</span>");

          if(data[1] == false){
            $("#btnLoginNew").attr("disabled",true);
          }else{
            $("#btnLoginNew").attr("disabled",false);
          }
  });
});



$("#txtemail").focus(function(){
  $(this).siblings("span").remove();
})

$("#txtemailNew").focus(function(){
  $(this).siblings("span").remove();
})


/***************************************************
 ** INICIAMOS SESION SI EL USUARIO EXISTE         **
 ***************************************************/
$("#frmLogin").submit(function(e) {
        e.preventDefault();
        if ($(this).parsley().isValid()) {
            var email= $("#txtemail").val();
            var pass= $("#txtpass").val();
            $.post("acceso",{email:email, pass:pass},function(data){
                var data = JSON.parse(data);

                if(data[0] == true){
                  document.location.href="dashboard";
                }else{

                  alert(data[1]);
                }
            })
        }
});


// VALIDA DESDE EL BOTON SUBMIT EL email New User
function frmLoginVisitor() {
    var x = document.forms["frmNewUser"]["txtemailNew"].value;
    if (x == "") {
        alert("Complete todo los campos");
        return false;
    }else{
      $("#txtemailNew").siblings("span").remove();
      var email = $("#txtemailNew").val();
      $.post("acceso/validoEmailNew",{email:email},function(data){
              var data = JSON.parse(data);
              $("#txtemailNew").siblings("label").after("<span class='error'>"+data[0]+"</span>");

              if(data[1] == false){
                $("#btnLoginNew").attr("disabled",true);
                // alert("aqui estoy");
                // return false;
              }else{
                $("#btnLoginNew").attr("disabled",false);

              }
      });
      // return false;
    }
}
