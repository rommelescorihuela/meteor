<?php

/**
 * @var yii\web\View $this
 * @var backend\models\DatosOrganizacion $model
 */

$this->title = 'Update Datos Organizacion: ' . ' ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Datos Organizacions', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="datos-organizacion-update">

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
