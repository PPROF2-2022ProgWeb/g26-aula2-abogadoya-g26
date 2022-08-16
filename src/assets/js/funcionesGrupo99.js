let pagina = "https://www.justiciacordoba.gob.ar/justiciacordoba/servicios/ConsultaJuicios.aspx";
let pagina2 = "https://www.lavoz.com.ar/sucesos/un-empresario-cordobes-debera-pagar-12-millones-a-las-personas-que-tenia-esclavizadas-en-su-aserradero";
let pagina3 = "https://www.clarin.com/sociedad/ultimas-palabras-brenda-barattini-joven-corto-pene-amante-arrepentida-_0_PAIzr0nW.html";
function confirmacion(href) {
	var pregunta = confirm("¿Desea abandonar AbogadoYa para dirigirse a un sitio externo?")
	if (pregunta){
		location.href = href;
	}
	else{
		alert("Gracias por permanecer en AbogadoYa")
	}
}

 
function validarFormulario(){
 
    var txtNombre = document.getElementById('nombre').value;
    var txtEdad = document.getElementById('edad').value;
    var txtCorreo = document.getElementById('correo').value;
    var txtFecha = document.getElementById('fecha').value;
    var cmbSelector = document.getElementById('selector').selectedIndex;
    var chkEstado = document.getElementById('checkBox');
    var rbtEstado = document.getElementsByName('radioButton');
 
    var banderaRBTN = false;
 
    //Test campo obligatorio
    if(txtNombre == null || txtNombre.length <= 2 || /^\s+$/.test(txtNombre)){
      alert('ERROR: Debe ingresar su nombre y apellido');
      return false;
    }
 
    //Test edad
    if(txtEdad == null || txtEdad.length == 0 || isNaN(txtEdad)){
      alert('ERROR: Debe ingresar una contraseña');
      return false;
    }
 
    //Test correo
    if(!(/\S+@\S+\.\S+/.test(txtCorreo))){
      alert('ERROR: Debe escribir un correo válido');
      return false;
    }
 
    //Test fecha
    if(!isNaN(txtFecha)){
      alert('ERROR: Debe elegir una fecha');
      return false;
    }
 
    //Test comboBox
    if(cmbSelector == null || cmbSelector == 0){
      alert('ERROR: Debe seleccionar una opcion de Sexo');
      return false;
    }
 
    //Test checkBox
    if(!chkEstado.checked){
      alert('ERROR: Debe aceptar los terminos y condiciones');
      return false;
    }
 
    //Test RadioButtons
    for(var i = 0; i < rbtEstado.length; i++){
      if(rbtEstado[i].checked){
        banderaRBTN = true;
        break;
      }
    }
    if(!banderaRBTN){
      alert('ERROR: Debe elegir su zona');
      return false;
    }
    alert("SE REGISTRO CORRECTAMENTE"); 
    return true ;
  }

  
 
'use strict'  
window.addEventListener('load',function(){  
 console.log("DOM cargado");  
 var formulario=document.querySelector("#formulario");  
 var box_dashed=document.querySelector(".dashed");  
 box_dashed.style.display="none";  
 formulario.addEventListener('submit',function(){  
  console.log("Evento submit capturado");  
  var nombre=document.querySelector('#nombre').value;  
  var apellidos=document.querySelector('#apellidos').value;  
  var edad=parseInt(document.querySelector('#edad').value);
  var consulta=document.querySelector('#consulta').value;    
  var error_nombre=document.querySelector('#error_nombre');  
  var error_apellidos=document.querySelector('#error_apellidos');  
  var error_edad=document.querySelector('#error_edad');  
  var error_consulta=document.querySelector('#error_consulta');
  if(nombre.trim()==null || nombre.trim().length==0){  
   alert("El nombre no es válido");  
   error_nombre.innerHTML="<span id='error_nombre'> Error</span>";  
   error_nombre.style.color="red";  
   return false;  
  }else{  
   //document.querySelector('#error_nombre').style.display='none';  
   error_nombre.innerHTML="<span id='error_nombre'></span>";  
  }  
  if(!(/\S+@\S+\.\S+/.test(apellidos))){  
   alert("Por favor ingrese un correo electronico valido");  
   error_apellidos.innerHTML="<span id='error_apellidos'> Error</span>";  
   error_apellidos.style.color="red";  
   return false;  
  }else{  
   error_apellidos.innerHTML="<span id='error_apellidos'></span>";  
  }  
  if(edad==null || edad<=0 || isNaN(edad)){  
   alert("La edad no es válida");  
   error_edad.innerHTML="<span id='error_edad'> Error</span>";  
   error_edad.style.color="red";  
   return false;  
  }else{  
   error_edad.innerHTML="<span id='error_edad'></span>";  
  }
  if(consulta.trim()==null || consulta.trim().length==0){  
    alert("Por favor ingrese su consulta");  
    error_consulta.innerHTML="<span id='error_apellidos'> Error</span>";  
    error_consulta.style.color="red";  
    return false;  
   }else{  
    error_consulta.innerHTML="<span id='error_consulta'></span>";  
   }
   alert('Envio correcto, la pagina se actualizara en 10 segundos');
   setTimeout('document.location.reload()',10000);
  box_dashed.style.display="block";  
  console.log(nombre,apellidos,edad,consulta);  
  var p_nombre = document.querySelector('#p_nombre span');  
  var p_apellidos = document.querySelector('#p_apellidos span');  
  var p_edad = document.querySelector('#p_edad span'); 
  var p_consulta = document.querySelector('#p_consulta span'); 
  p_nombre.innerHTML=nombre;  
  p_apellidos.innerHTML=apellidos;  
  p_edad.innerHTML=edad; 
  p_consulta.innerHTML=consulta; 
  
 });  
});  