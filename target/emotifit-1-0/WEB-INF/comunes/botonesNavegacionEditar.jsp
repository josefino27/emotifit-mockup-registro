 <!-- Button trigger modal -->
 <section id="actions" class="py-4 mb-4 bg-light">
     <div class="container">
         <div class="row">
             <div class="col-md-3">
                 <a  href="ServletControlador"class="btn btn-ligth btn-block" >
                <i class="fas fa-arrow-left">    regresar al inicio</i></a> 
             </div>
             <div class="col-md-3">
                 <button type="submit"  class="btn btn-primary btn-block" >
                     <i class="fas fa-check">    Actualizar </i>
                 </button>
             </div>
             <div class="col-md-3">
                <a  href="ServletControlador?accion=eliminar&idUsuario=${cliente.idUsuario}"class="btn btn-danger btn-block"> 
                 Eliminar</a> 
             </div>
         </div>        
     </div>
 </section>
