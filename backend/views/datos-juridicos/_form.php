<?php

use yii\helpers\Html;
use yii\bootstrap4\ActiveForm;

/**
 * @var yii\web\View $this
 * @var backend\models\DatosJuridicos $model
 * @var yii\bootstrap4\ActiveForm $form
 */
?>

<div class="datos-juridicos-form">
    <?php $form = ActiveForm::begin(); ?>
        <div class="card">
            <div class="card-body">
                <?php echo $form->errorSummary($model); ?>

                <?php echo $form->field($model, 'estado_oficina')->textInput() ?>
                <?php echo $form->field($model, 'oficina_registro')->textInput() ?>
                <?php echo $form->field($model, 'numero')->textInput() ?>
                <?php echo $form->field($model, 'folio')->textInput() ?>
                <?php echo $form->field($model, 'tomo')->textInput() ?>
                <?php echo $form->field($model, 'fecha')->textInput() ?>
                <?php echo $form->field($model, 'rif')->textInput() ?>
                <?php echo $form->field($model, 'nit')->textInput() ?>
                <?php echo $form->field($model, 'iddatosorganizacion')->textInput() ?>
                
            </div>
            <div class="card-footer">
                <?php echo Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
            </div>
        </div>
    <?php ActiveForm::end(); ?>
</div>
