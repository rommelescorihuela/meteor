<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model frontend\models\Respuestas */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="respuestas-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'id_pregunta')->textInput()->label(false) ?>

    <?= $form->field($model, 'id_alumno')->hiddenInput()->label(false) ?>

    <?= $form->field($model, 'respuesta')->textarea() ?>

    <?php $form->field($model, 'id_alumno_juridico')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
