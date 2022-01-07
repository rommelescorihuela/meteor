<?php

/**
 * @var yii\web\View $this
 * @var backend\models\TipoSolicitud $model
 */

$this->title = 'Update Tipo Solicitud: ' . ' ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Tipo Solicituds', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="tipo-solicitud-update">

    <?php echo $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
