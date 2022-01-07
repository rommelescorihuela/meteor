<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\select2\Select2;

/* @var $this yii\web\View */
/* @var $model app\models\DatosPersonales */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="datos-personales-form">

    <?php $form = ActiveForm::begin(); ?>
    <?php $form->field($model, 'id')->textInput() ?>
    <?php $form->field($model, 'id_organizacion')->textInput() ?>
    <div class="row"> 
        <div class="col-md-4">
            <?= $form->field($model, 'nombre')->textInput() ?>
        </div>
        <div class="col-md-4">
            <?= $form->field($model, 'apellido')->textInput() ?>
        </div>    
        <div class="col-md-4">
            <?= $form->field($model, 'cedula')->textInput() ?>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">        
            <?= $form->field($model, 'telefono1')->textInput() ?>
        </div>
        <div class="col-md-4">
            <?= $form->field($model, 'telefono2')->textInput() ?>
        </div>
        <div class="col-md-4">
            <?= $form->field($model, 'telefono3')->textInput() ?>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">    
            <?= $form->field($model, 'correo')->textInput() ?>
        </div>
        <div class="col-md-6">
            <?= $form->field($model, 'profesion_oficio')->textInput() ?>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
             <?php
              echo $form->field($model, 'representante')->widget(Select2::classname(), [
                'data' => [1=>'Si',2=>'No'],
                'options' => ['placeholder' => 'Seleccione'],
                'pluginOptions' => [
                'allowClear' => true
                ],
              ]);
            ?>
        </div>    
        <div class="col-md-6">
             <?php
              echo $form->field($model, 'integrante')->widget(Select2::classname(), [
                'data' => [1=>'Si',2=>'No'],
                'options' => ['placeholder' => 'Seleccione'],
                'pluginOptions' => [
                'allowClear' => true
                ],
              ]);
            ?>
        </div>
    </div>


    <div class="form-group">
        <?= Html::submitButton('Agregar', ['class' => 'btn btn-success']) ?>
        <?= Html::submitButton('Finalizar', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
