<?php

use yii\helpers\Html;
use yii\bootstrap4\ActiveForm;

/**
 * @var yii\web\View $this
 * @var backend\models\DatosJuridicos $model
 * @var yii\bootstrap4\ActiveForm $form
 */
?>

<div class="datos-juridicos-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?php echo $form->field($model, 'estado_oficina') ?>
    <?php echo $form->field($model, 'oficina_registro') ?>
    <?php echo $form->field($model, 'numero') ?>
    <?php echo $form->field($model, 'folio') ?>
    <?php echo $form->field($model, 'tomo') ?>
    <?php // echo $form->field($model, 'fecha') ?>
    <?php // echo $form->field($model, 'rif') ?>
    <?php // echo $form->field($model, 'nit') ?>
    <?php // echo $form->field($model, 'iddatosorganizacion') ?>
    <?php // echo $form->field($model, 'id') ?>

    <div class="form-group">
        <?php echo Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?php echo Html::resetButton('Reset', ['class' => 'btn btn-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
