<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model frontend\models\MaterialApoyoSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="material-apoyo-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
        'options' => [
            'data-pjax' => 1
        ],
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'nombre') ?>

    <?= $form->field($model, 'tipo') ?>

    <?= $form->field($model, 'id_taller') ?>

    <?= $form->field($model, 'file') ?>

    <?php // echo $form->field($model, 'file_src_filename') ?>

    <?php // echo $form->field($model, 'file_web_filename') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-outline-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
