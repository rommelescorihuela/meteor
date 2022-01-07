<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\search\DatosJuridicos */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="datos-juridicos-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
        'options' => [
            'data-pjax' => 1
        ],
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'estado_oficina') ?>

    <?= $form->field($model, 'oficina_registro') ?>

    <?= $form->field($model, 'numero') ?>

    <?= $form->field($model, 'folio') ?>

    <?php // echo $form->field($model, 'tomo') ?>

    <?php // echo $form->field($model, 'fecha') ?>

    <?php // echo $form->field($model, 'rif') ?>

    <?php // echo $form->field($model, 'nit') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-outline-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
