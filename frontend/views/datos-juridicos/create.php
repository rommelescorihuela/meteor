<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\DatosJuridicos */

$this->title = 'Create Datos Juridicos';
$this->params['breadcrumbs'][] = ['label' => 'Datos Juridicos', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="datos-juridicos-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
