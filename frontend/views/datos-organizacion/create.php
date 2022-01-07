<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\DatosOrganizacion */

$this->title = 'Regitro o Renovacion de Datos Organizacion';
//$this->params['breadcrumbs'][] = ['label' => 'Datos Organizacions', 'url' => ['index']];
//$this->params['breadcrumbs'][] = $this->title;
?>
<div class="datos-organizacion-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
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
