<?php

use yii\helpers\Html;
use yii\bootstrap4\ActiveForm;

/**
 * @var yii\web\View $this
 * @var backend\models\DatosPersonales $model
 * @var yii\bootstrap4\ActiveForm $form
 */
?>

<div class="datos-personales-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?php echo $form->field($model, 'nombre') ?>
    <?php echo $form->field($model, 'apellido') ?>
    <?php echo $form->field($model, 'cedula') ?>
    <?php echo $form->field($model, 'profesion_oficio') ?>
    <?php echo $form->field($model, 'telefono1') ?>
    <?php // echo $form->field($model, 'telefono2') ?>
    <?php // echo $form->field($model, 'telefono3') ?>
    <?php // echo $form->field($model, 'correo') ?>
    <?php // echo $form->field($model, 'representante') ?>
    <?php // echo $form->field($model, 'integrante') ?>
    <?php // echo $form->field($model, 'id_organizacion') ?>
    <?php // echo $form->field($model, 'id') ?>

    <div class="form-group">
        <?php echo Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?php echo Html::resetButton('Reset', ['class' => 'btn btn-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
