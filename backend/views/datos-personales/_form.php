<?php

use yii\helpers\Html;
use yii\bootstrap4\ActiveForm;

/**
 * @var yii\web\View $this
 * @var backend\models\DatosPersonales $model
 * @var yii\bootstrap4\ActiveForm $form
 */
?>

<div class="datos-personales-form">
    <?php $form = ActiveForm::begin(); ?>
        <div class="card">
            <div class="card-body">
                <?php echo $form->errorSummary($model); ?>

                <?php echo $form->field($model, 'nombre')->textInput() ?>
                <?php echo $form->field($model, 'apellido')->textInput() ?>
                <?php echo $form->field($model, 'cedula')->textInput() ?>
                <?php echo $form->field($model, 'profesion_oficio')->textInput() ?>
                <?php echo $form->field($model, 'telefono1')->textInput() ?>
                <?php echo $form->field($model, 'telefono2')->textInput() ?>
                <?php echo $form->field($model, 'telefono3')->textInput() ?>
                <?php echo $form->field($model, 'correo')->textInput() ?>
                <?php echo $form->field($model, 'representante')->textInput() ?>
                <?php echo $form->field($model, 'integrante')->textInput() ?>
                <?php echo $form->field($model, 'id_organizacion')->textInput() ?>
                
            </div>
            <div class="card-footer">
                <?php echo Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
            </div>
        </div>
    <?php ActiveForm::end(); ?>
</div>
