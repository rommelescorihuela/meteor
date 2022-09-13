<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model frontend\models\MaterialApoyo */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="material-apoyo-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'nombre')->textInput() ?>

    <?= $form->field($model, 'tipo')->textInput() ?>

    <?= $form->field($model, 'id_taller')->textInput() ?>

    <?= $form->field($model, 'file')->textInput() ?>

    <?= $form->field($model, 'file_src_filename')->textInput() ?>

    <?= $form->field($model, 'file_web_filename')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
