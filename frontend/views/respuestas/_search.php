<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model frontend\models\RespuestasSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="respuestas-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'id_pregunta') ?>

    <?= $form->field($model, 'id_alumno') ?>

    <?= $form->field($model, 'respuesta') ?>

    <?= $form->field($model, 'id_alumno_juridico') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-outline-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
