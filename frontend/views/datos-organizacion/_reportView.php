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
<pagebreak />

</body>
</html>