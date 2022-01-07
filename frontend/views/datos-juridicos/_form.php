<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\DatosJuridicos */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="datos-juridicos-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'id')->textInput() ?>

    <?= $form->field($model, 'estado_oficina')->textInput() ?>

    <?= $form->field($model, 'oficina_registro')->textInput() ?>

    <?= $form->field($model, 'numero')->textInput() ?>

    <?= $form->field($model, 'folio')->textInput() ?>

    <?= $form->field($model, 'tomo')->textInput() ?>

    <?= $form->field($model, 'fecha')->textInput() ?>

    <?= $form->field($model, 'rif')->textInput() ?>

    <?= $form->field($model, 'nit')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
