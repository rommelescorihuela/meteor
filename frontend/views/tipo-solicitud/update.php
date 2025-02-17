<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model frontend\models\TipoSolicitud */

$this->title = 'Update Tipo Solicitud: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Tipo Solicituds', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="tipo-solicitud-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
