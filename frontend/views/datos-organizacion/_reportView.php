<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title></title>
  <link rel="stylesheet" href="">
</head>
<body>
<div style="height: 100px;"></div>
<div class="col-md-12" style="padding-left: 365px;font-size: 20;"><b>Consignación de Documentos</b></div>
<div class="col-md-12" style="padding-left: 130px; padding-top: 30px; font-size: 20;">Registro de las Organizaciones de Usuarios y Usuarias de Radio y Televisión</div>

  <div class="table-responsive">
    <table class="table table-bordered">
     <tbody>
      <tr>
        <th class="active">PRESENTADO A:</th>
        <th class="active">SOLICITUD DE</th>
      </tr>
      <tr>
       <td>Comisión Nacional de Telecomunicaciones (CONATEL)</td>
       <td><?php echo $tiposol->tipo ?></td>
      </tr>
    </tbody>
  </table>
</div>

  <div class="table-responsive">
    <table class="table table-bordered">
     <tbody>
      <tr>
        <td style="width: 300px;">Nombre de la Organización</td>
        <td><?php echo $model->nombre_o1; ?></td>
      </tr>
      <tr>
       <td>Funcionario Receptor</td>
       <td></td>
      </tr>
      <tr>
       <td>Entidad Federal (Municipio,Parroquia)</td>
       <td><?php echo $estado1->estado.'( '.$muni1->municipio.', '.$parro1->parroquia.')'; ?></td>
      </tr>
    </tbody>
  </table>
</div>
<div><b>Documentos Adjuntos:</b></div>
<div class="table-responsive">
    <table class=" table-borderless">
     <tbody>
      <tr>
        <td style="width: 550px;">1. FICHA DE DATOS (PLANILLA 1)</td>
        <td>[_]</td>
      </tr>
      <tr>
        <td>2. CONDICIONES GENERALES (PLANILLA 2)</td>
        <td>[_]</td>
      </tr>
      <tr>
        <td>3. REGISTRO DE INTEGRANTES (PLANILLA 3)</td>
        <td>[_]</td>
      </tr>
      <tr>
        <td>4. REGISTRO DE VOCEROS ELECTOS Y ELECTORES (PLANILLA 4)</td>
        <td>[_]</td>
      </tr>
      <tr>
        <td>5. DECLARACION JURADA DE MIEMBROS DE INTEGRANTES</td>
        <td>[_]</td>
      </tr>
      <tr>
        <td>6. DECLARACION JURADA DE VOCEROS</td>
        <td>[_]</td>
      </tr>
      <tr>
        <td>7. OTROS (ESPECIFIQUE)</td>
        <td>[_]</td>
      </tr>

    </tbody>
  </table>
</div>
<div class="col-md-12" style="padding-left: 300px; padding-top: 100px;">“ Esta documentación debe ir acompañada de original y copia ”</div>
<!-----------pagina 2--------->
<pagebreak />

<div style="height: 100px;"></div>
<div class="col-md-12" style="padding-left: 465px;font-size: 20;"><b>Ficha de Datos</b></div>
<div class="col-md-12" style="padding-left: 130px; padding-top: 30px; font-size: 20;">Registro de las Organizaciones de Usuarios y Usuarias de Radio y Televisión</div>
<div class="col-md-12"><b>DATOS DE LA ORGANIZACION</b></div>
<div class="table-responsive">
    <table class="table table-bordered table-sm">
     <tbody>
      <tr>
        <td style="width: 350px;" colspan="3">Nombre de la Organización: <?php echo $model->nombre_o1?></td>
        <td colspan="2">Tipo de solicitud: <?php echo $tiposol->tipo ?></td>
      </tr>
      <tr>
        <td colspan="5" class="active">Opciones de Nombre de la Organización (en caso de no estar disponible el nombre de la organización suministrado en la en la opcion inicial)</td>

      </tr>
      <tr>
        <td colspan="5">2da. Opción: <?php echo $model->nombre_o2?></td>
      </tr>
      <tr>
        <td colspan="5">3ra. Opción: <?php echo $model->nombre_o3?></td>
      </tr>
      <tr>
        <td>Dirección: <?php echo $model->direccion; ?></td>
        <td>Estado: <?php echo $estado1->estado; ?></td>
        <td>Municipio: <?php echo $muni1->municipio; ?></td>
        <td>Parroquia: <?php echo $parro1->parroquia;?></td>
        <td>Ciudad:</td>
      </tr>
      <tr>
        <td colspan="2">Número Total de Integrantes:<?php echo $model->n_integrantes; ?></td>
        <td colspan="3">Observaciones: <?php echo $model->observaciones; ?></td>
      </tr>
    </tbody>
  </table>
</div>
<pagebreak />

<div style="height: 100px;"></div>
<div class="col-md-12" style="padding-left: 465px;font-size: 20;"><b>Ficha de Datos</b></div>
<div class="col-md-12" style="padding-left: 130px; padding-top: 30px; font-size: 20;">Registro de las Organizaciones de Usuarios y Usuarias de Radio y Televisión</div>
<div class="col-md-12"><b>DATOS DE REPRESENTANTES</b></div>
<div class="table-responsive">
    <table class="table table-bordered">
     <tbody>
      <tr>
        <td>Nombres y Apellidos</td>
        <td>Teléfono Celular:</td>
        <td>Teléfono Habitación:</td>
        <td>Teléfono Adicional:</td>
        <td>Correo Electrónico:</td>
      </tr>
      <tr>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
    </tbody>
  </table>
</div>
<div class="col-md-12"><b>SERVICIOS DE TELECOMUNICACIONES DE INTERÉS PARTICULAR PARA LA ORGANIZACIÓN</b></div>
<div class="table-responsive">
    <table class="table table-bordered">
     <tbody>
      <tr>
        <td>Radiodifusión Sonora (Radio AM y FM)[_]</td>
        <td>Telefonía de Larga Distancia Internacional[_]</td>
        <td>Acceso de Redes de Datos[_]</td>
      </tr>
      <tr>
        <td>Televisión Abierta (VHF y UHF)[_]</td>
        <td>Internet[_]</td>
        <td>Ayuda a Meteorología[_]</td>
      </tr>
      <tr>
        <td>Radiodifusión Sonora Comunitaria[_]</td>
        <td>Radiocomunicaciones Móvil Terrestre[_]</td>
        <td>Radioaficionados[_]</td>
      </tr>
      <tr>
        <td>Televisión por Suscripción (cable y satelital)[_]</td>
        <td>Radiocomunicaciones Aeronáuticas[_]</td>
        <td>Radiomensajes[_]</td>
      </tr>
      <tr>
        <td>Telefonía Móvil[_]</td>
        <td>Radiocomunicaciones Marítimas[_]</td>
        <td>Transporte[_]</td>
      </tr>
      <tr>
        <td>Telefonía de Larga Distancia Nacional[_]</td>
        <td>Radiodeterminación[_]</td>
        <td>TODOS LOS ANTERIORES[_]</td>
      </tr>
    </tbody>
  </table>
</div>
  <!--------pagina 4------->
  <pagebreak />

  <div style="height: 100px;"></div>
  <div class="col-md-12" style="padding-left: 465px;font-size: 20;"><b>Condiciones Generales</b></div>
  <div class="col-md-12" style="padding-left: 130px; padding-top: 30px; font-size: 20;">Registro de las Organizaciones de Usuarios y Usuarias de Radio y Televisión</div>
  <div class="table-responsive">
      <table class="table table-bordered" style="line-height: 0.5">
       <tbody>
        <tr>
          <td style="width: 350px;" colspan="3">Nombre de la Organización: <?php echo $model->nombre_o1?></td>
          <td colspan="2">Tipo de solicitud: <?php echo $tiposol->tipo ?></td>
        </tr>
        <tr>
          <td>Dirección: <?php echo $model->direccion; ?></td>
          <td>Estado: <?php echo $estado1->estado; ?></td>
          <td>Municipio: <?php echo $muni1->municipio; ?></td>
          <td>Parroquia: <?php echo $parro1->parroquia;?></td>
          <td>Ciudad:</td>
        </tr>
      </tbody>
    </table>
  </div>
  <div class="col-md-12"><b>CONDICIONES GENERALES</b></div>
<div class="col-md-12">
  <ul>
    <li>La cantidad para constituir una Organización de Usuarios y Usuarias es mínima veinte (20) personas según Art.12 de la ley RESORTE y Art.9 de la
LOTEL.</li>
    <li>De conformidad con el artículo 4 de la Providencia Administrativa No 533 contentiva de las Normas para el Registro de Organizaciones de Usuarios
y Usuarias de los Servicios de Telecomunicaciones, los firmantes de esta planilla aceptan las siguientes condiciones: no podrán ejercer ningún
cargo directivo ni de representación legal de servicios de telecomunicaciones, no podrán recibir ningún tipo de aporte económico que provenga de
personas naturales o jurídicas públicas o privadas que puedan condicionar sus actividades en promoción y defensa de los derechos
comunicacionales.</li>
    <li>De conformidad con el artículo 14 de la Providencia Administrativa No 533 contentiva de las Normas para el Registro de Organizaciones de
Usuarios y Usuarias de los Servicios de Telecomunicaciones, el solicitante tiene el deber de notificar cualquier modificación de los datos
presentados en el registro dentro de los 15 días continuos siguientes a la modificación.</li>
    <li>En la planilla de Registro de Voceros Electos debe registrarse al menos la mitad más uno de los miembros inscritos de la organización para que
tenga validez.</li>
  </ul>
</div>
<div class="col-md-12">
  Como miembros y voceros de la Organización de Usuarios y Usuarias: _________________________________________________
  ______________________________________________________________________Aceptamos las Condiciones que se establecen
  para el Registro de Organizaciones de Usuarios y Usuarias de Servicios de Telecomunicaciones y velaremos por su fiel cumplimiento.
</div>
<div class="table-responsive">
  <table class="table table-borderless">
   <tbody>
    <tr>
      <td class="text-center">  _________________<br>
        Vocero Principal<br>
        C.I.</td>
      <td class="text-center">_________________<br>
      Vocero Suplente<br>
      C.I</td>
    </tr>
  </tbody>
</table>
</div>
<!-------pagina 5 ------->
<pagebreak />

<div style="height: 100px;"></div>
<div class="col-md-12" style="padding-left: 365px;font-size: 20;"><b>Registro de Integrantes</b></div>
<div class="col-md-12" style="padding-left: 130px; padding-top: 30px; font-size: 20;">Registro de las Organizaciones de Usuarios y Usuarias de Radio y Televisión</div>
<div class="col.md-12">INSTRUCCIONES</div>
<div class="table-responsive">
    <table class="table" style="font-size:11px;">
     <tbody>
      <tr>
        <td>1. La planilla debe ser escrita a mano, con letra molde y legible.</td>
        <td>2.Los números de teléfonos colocados deben ser comprobables .</td>
      </tr>
      <tr>
        <td>3. Los campos de la planilla con (*) son de carácter obligatorio y verificables.</td>
        <td>4. En caso de no poseer correo electrónico, colocar un número de Teléfono Opcional.</td>
      </tr>
      <tr>
        <td colspan="2">5.Cada integrante debe colocar sus datos de puño y letra, en caso de poseer algún impedimento, deberá solicitar ayuda colocando en el campo de
            firma su pulgar derecho.</td>
      </tr>
    </tbody>
  </table>
</div>
<div class="table-responsive">
    <table class="table table-bordered" style="line-height: 0.5">
     <tbody>
      <tr>
        <td style="width: 350px;" colspan="3">Nombre de la Organización: <?php echo $model->nombre_o1?></td>
        <td colspan="2">Tipo de solicitud: <?php echo $tiposol->tipo ?></td>
      </tr>
      <tr>
        <td>Dirección: <?php echo $model->direccion; ?></td>
        <td>Estado: <?php echo $estado1->estado; ?></td>
        <td>Municipio: <?php echo $muni1->municipio; ?></td>
        <td>Parroquia: <?php echo $parro1->parroquia;?></td>
        <td>Ciudad:</td>
      </tr>
    </tbody>
  </table>
</div>
<div class="col.md-12">DATOS DE LOS INTEGRANTES</div>
<div class="table-responsive">
    <table class="table table-bordered" style="font-size:10px">
     <tbody>
       <tr>
        <td>#</td>
        <td>Apellidos y Nombres (*)</td>
        <td>Cédula de Identidad (*)</td>
        <td>Profesión u Oficio (*)</td>
        <td>Teléfono (*)</td>
        <td>Correo Electrónico</td>
        <td>Organización</td>
        <td>Firma (*)</td>
       </tr>
       <?php for ($i=1; $i <= 4 ; $i++) {?>
         <tr>
          <td><?php echo $i ?></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
         </tr>
     <?php } ?>
    </tbody>
  </table>
</div>
<div class="col-md-12"  style="font-size:10px;">Nosotros, los firmantes de esta planilla, aceptamos los términos que se establecen en las Normas para el Registro de Organizaciones de Usuarios y Usuarias de los Servicios de
Telecomunicaciones en su artículo 4, que expresa las siguientes condiciones: los integrantes de la OUU no podrán ejercer ningún cargo directivo ni de representación legal de
servicios de telecomunicaciones, no podrán recibir ningún tipo de aporte económico que provenga de personas naturales o jurídicas públicas o privadas que puedan
condicionar sus actividades en promoción y defensa de los derechos comunicacionales.</div>
<!-----------pagina 6 ------->
<pagebreak />
<div style="height: 100px;"></div>
<div class="col-md-12" style="padding-left: 365px;font-size: 20;"><b>Registro de Integrantes</b></div>
<div class="col-md-12" style="padding-left: 130px; padding-top: 30px; font-size: 20;">Registro de las Organizaciones de Usuarios y Usuarias de Radio y Televisión</div>
<div class="col.md-12">DATOS DE LOS INTEGRANTES</div>
<div class="table-responsive">
    <table class="table table-bordered" style="font-size:10px">
     <tbody>
       <tr>
        <td>#</td>
        <td>Apellidos y Nombres (*)</td>
        <td>Cédula de Identidad (*)</td>
        <td>Profesión u Oficio (*)</td>
        <td>Teléfono (*)</td>
        <td>Correo Electrónico</td>
        <td>Organización</td>
        <td>Firma (*)</td>
       </tr>
       <?php for ($i=5; $i <= 15 ; $i++) {?>
         <tr>
          <td><?php echo $i ?></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
         </tr>
     <?php } ?>
    </tbody>
  </table>
</div>
<div class="table-responsive">
    <table class="table table-bordered" style="font-size:10px">
     <tbody>
       <tr>
        <td>Observaciones:</td>
       </tr>
    </tbody>
  </table>
</div>
<div class="col-md-12"  style="font-size:10px;">Nosotros, los firmantes de esta planilla, aceptamos los términos que se establecen en las Normas para el Registro de Organizaciones de Usuarios y Usuarias de los Servicios de
Telecomunicaciones en su artículo 4, que expresa las siguientes condiciones: los integrantes de la OUU no podrán ejercer ningún cargo directivo ni de representación legal de
servicios de telecomunicaciones, no podrán recibir ningún tipo de aporte económico que provenga de personas naturales o jurídicas públicas o privadas que puedan
condicionar sus actividades en promoción y defensa de los derechos comunicacionales.</div>
<!------------pagina 7-------------->
<pagebreak />
<div style="height: 100px;"></div>
<div class="col-md-12" style="padding-left: 365px;font-size: 20;"><b>Registro de Integrantes</b></div>
<div class="col-md-12" style="padding-left: 130px; padding-top: 30px; font-size: 20;">Registro de las Organizaciones de Usuarios y Usuarias de Radio y Televisión</div>
<div class="col.md-12">DATOS DE LOS INTEGRANTES</div>
<div class="table-responsive">
    <table class="table table-bordered" style="font-size:10px">
     <tbody>
       <tr>
        <td>#</td>
        <td>Apellidos y Nombres (*)</td>
        <td>Cédula de Identidad (*)</td>
        <td>Profesión u Oficio (*)</td>
        <td>Teléfono (*)</td>
        <td>Correo Electrónico</td>
        <td>Organización</td>
        <td>Firma (*)</td>
       </tr>
       <?php for ($i=15; $i <= 25 ; $i++) {?>
         <tr>
          <td><?php echo $i ?></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
         </tr>
     <?php } ?>
    </tbody>
  </table>
</div>
<div class="table-responsive">
    <table class="table table-bordered" style="font-size:10px">
     <tbody>
       <tr>
        <td>Observaciones:</td>
       </tr>
    </tbody>
  </table>
</div>
<div class="col-md-12"  style="font-size:10px;">Nosotros, los firmantes de esta planilla, aceptamos los términos que se establecen en las Normas para el Registro de Organizaciones de Usuarios y Usuarias de los Servicios de
Telecomunicaciones en su artículo 4, que expresa las siguientes condiciones: los integrantes de la OUU no podrán ejercer ningún cargo directivo ni de representación legal de
servicios de telecomunicaciones, no podrán recibir ningún tipo de aporte económico que provenga de personas naturales o jurídicas públicas o privadas que puedan
condicionar sus actividades en promoción y defensa de los derechos comunicacionales.</div>

<!------------------ pagina 8 ------------------->
<pagebreak />
<div style="height: 100px;"></div>
<div class="col-md-12" style="padding-left: 365px;font-size: 20;"><b>Registro de Integrantes</b></div>
<div class="col-md-12" style="padding-left: 130px; padding-top: 30px; font-size: 20;">Registro de las Organizaciones de Usuarios y Usuarias de Radio y Televisión</div>
<div class="col.md-12">DATOS DE LOS INTEGRANTES</div>
<div class="table-responsive">
    <table class="table table-bordered" style="font-size:10px">
     <tbody>
       <tr>
        <td>#</td>
        <td>Apellidos y Nombres (*)</td>
        <td>Cédula de Identidad (*)</td>
        <td>Profesión u Oficio (*)</td>
        <td>Teléfono (*)</td>
        <td>Correo Electrónico</td>
        <td>Organización</td>
        <td>Firma (*)</td>
       </tr>
       <?php for ($i=25; $i <= 31 ; $i++) {?>
         <tr>
          <td><?php echo $i ?></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
         </tr>
     <?php } ?>
    </tbody>
  </table>
</div>
<div class="table-responsive">
    <table class="table table-bordered" style="font-size:10px">
     <tbody>
       <tr>
        <td>Observaciones:</td>
       </tr>
    </tbody>
  </table>
</div>
<div class="col-md-12"  style="font-size:10px;">Nosotros, los firmantes de esta planilla, aceptamos los términos que se establecen en las Normas para el Registro de Organizaciones de Usuarios y Usuarias de los Servicios de
Telecomunicaciones en su artículo 4, que expresa las siguientes condiciones: los integrantes de la OUU no podrán ejercer ningún cargo directivo ni de representación legal de
servicios de telecomunicaciones, no podrán recibir ningún tipo de aporte económico que provenga de personas naturales o jurídicas públicas o privadas que puedan
condicionar sus actividades en promoción y defensa de los derechos comunicacionales.</div>
<!--pagina 9-->
<pagebreak />
<div style="height: 100px;"></div>
<div class="col-md-12" style="padding-left: 365px;font-size: 20;"><b>Registro de Voceros Electos y Electores</b></div>
<div class="col-md-12" style="padding-left: 130px; padding-top: 30px; font-size: 20;">Registro de las Organizaciones de Usuarios y Usuarias de Radio y Televisión</div>
<div class="table-responsive">
    <table class="table table-bordered" style="line-height: 0.5">
     <tbody>
      <tr>
        <td style="width: 350px;" colspan="3">Nombre de la Organización: <?php echo $model->nombre_o1?></td>
        <td colspan="2">Tipo de solicitud: <?php echo $tiposol->tipo ?></td>
      </tr>
      <tr>
        <td>Dirección: <?php echo $model->direccion; ?></td>
        <td>Estado: <?php echo $estado1->estado; ?></td>
        <td>Municipio: <?php echo $muni1->municipio; ?></td>
        <td>Parroquia: <?php echo $parro1->parroquia;?></td>
        <td>Ciudad:</td>
      </tr>
    </tbody>
  </table>
</div>
<div class="col.md-12">DATOS DE LOS INTEGRANTES DESIGNADOS COMO REPRESENTANTES (VOCEROS)</div>
<div class="table-responsive">
    <table class="table table-bordered" style="line-height: 0.5">
     <tbody>
      <tr>
        <td>Apellidos y Nombres</td>
        <td>Cédula de Identidad</td>
        <td>Profesión u Oficio</td>
        <td>Teléfono</td>
        <td>Teléfono Adicional</td>
        <td>Correo Electrónico</td>
        <td>Firma</td>
      </tr>
      <tr>
        <td>Principal</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>Suplente</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
    </tbody>
  </table>
</div>
<div class="">DATOS DE LOS ELECTORES</div>
<div class="table-responsive">
    <table class="table table-bordered" style="font-size:10px">
     <tbody>
       <tr>
        <td>#</td>
        <td>Apellidos y Nombres (*)</td>
        <td>Cédula de Identidad (*)</td>
        <td>Firma (*)</td>
       </tr>
       <?php for ($i=1; $i <= 5 ; $i++) {?>
         <tr>
          <td><?php echo $i ?></td>
          <td></td>
          <td></td>
          <td></td>
         </tr>
     <?php } ?>
    </tbody>
  </table>
</div>
<div class="col-md-12" style="font-size:10px;">IMPORTANTE: Se considerará válida la elección del miembro principal y suplente de la Organización de Usuarios y Usuarias sólo cuando firmen la mitad más uno de los
miembros o integrantes que la componen.</div>
<!--pagina 10-->
<pagebreak />
<div style="height: 100px;"></div>
<div class="col-md-12" style="padding-left: 365px;font-size: 20;"><b>Registro de Voceros Electos y Electores</b></div>
<div class="col-md-12" style="padding-left: 130px; padding-top: 30px; font-size: 20;">Registro de las Organizaciones de Usuarios y Usuarias de Radio y Televisión</div>
<div class="">DATOS DE LOS ELECTORES</div>
<div class="table-responsive">
    <table class="table table-bordered" style="font-size:10px">
     <tbody>
       <tr>
        <td>#</td>
        <td>Apellidos y Nombres (*)</td>
        <td>Cédula de Identidad (*)</td>
        <td>Firma (*)</td>
       </tr>
       <?php for ($i=6; $i <= 19 ; $i++) {?>
         <tr>
          <td><?php echo $i ?></td>
          <td></td>
          <td></td>
          <td></td>
         </tr>
     <?php } ?>
    </tbody>
  </table>
</div>
<div class="col-md-12" style="font-size:10px;">IMPORTANTE: Se considerará válida la elección del miembro principal y suplente de la Organización de Usuarios y Usuarias sólo cuando firmen la mitad más uno de los
miembros o integrantes que la componen.</div>
<!--pagina 10-->
<pagebreak />
<div style="height: 100px;"></div>
<div class="col-md-12" style="padding-left: 365px;font-size: 20;"><b>Registro de Voceros Electos y Electores</b></div>
<div class="col-md-12" style="padding-left: 130px; padding-top: 30px; font-size: 20;">Registro de las Organizaciones de Usuarios y Usuarias de Radio y Televisión</div>
<div class="">DATOS DE LOS ELECTORES</div>
<div class="table-responsive">
    <table class="table table-bordered" style="font-size:10px">
     <tbody>
       <tr>
        <td>#</td>
        <td>Apellidos y Nombres (*)</td>
        <td>Cédula de Identidad (*)</td>
        <td>Firma (*)</td>
       </tr>
       <?php for ($i=20; $i <= 31 ; $i++) {?>
         <tr>
          <td><?php echo $i ?></td>
          <td></td>
          <td></td>
          <td></td>
         </tr>
     <?php } ?>
    </tbody>
  </table>
</div>
<div class="table-responsive">
    <table class="table table-bordered" style="font-size:10px">
     <tbody>
       <tr>
        <td>Observaciones:</td>
       </tr>
    </tbody>
  </table>
</div>
<div class="col-md-12" style="font-size:10px;">IMPORTANTE: Se considerará válida la elección del miembro principal y suplente de la Organización de Usuarios y Usuarias sólo cuando firmen la mitad más uno de los
miembros o integrantes que la componen.</div>
</body>
</html>