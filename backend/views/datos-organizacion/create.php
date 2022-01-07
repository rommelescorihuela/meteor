<?php

/**
 * @var yii\web\View $this
 * @var backend\models\DatosOrganizacion $model
 */

$this->title = 'Create Datos Organizacion';
$this->params['breadcrumbs'][] = ['label' => 'Datos Organizacions', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="datos-organizacion-create">

    <?php echo $this->render('_form', [
        'model' => $model,
        'modelts' => $modelts,
        'modelper' => $modelper,
        'datats' => $datats,
        'dataes' => $dataes,
        'datamun' => $datamun,
        'datapar' => $datapar,
        'dataser' => $dataser,
        'estado' => $estado,
        'municipio' => $municipio,
    ]) ?>

</div>
