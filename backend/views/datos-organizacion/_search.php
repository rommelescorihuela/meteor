<?php

use yii\helpers\Html;
use yii\bootstrap4\ActiveForm;

/**
 * @var yii\web\View $this
 * @var backend\models\DatosOrganizacion $model
 * @var yii\bootstrap4\ActiveForm $form
 */
?>

<div class="datos-organizacion-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?php echo $form->field($model, 'nombre_o1') ?>
    <?php echo $form->field($model, 'nombre_o2') ?>
    <?php echo $form->field($model, 'nombre_o3') ?>
    <?php echo $form->field($model, 'funcionario') ?>
    <?php echo $form->field($model, 'fecha_registro') ?>
    <?php // echo $form->field($model, 'direccion') ?>
    <?php // echo $form->field($model, 'id_direccion') ?>
    <?php // echo $form->field($model, 'n_integrantes') ?>
    <?php // echo $form->field($model, 'observaciones') ?>
    <?php // echo $form->field($model, 'servicios') ?>
    <?php // echo $form->field($model, 'idtiposolicitud') ?>
    <?php // echo $form->field($model, 'idparroquia') ?>
    <?php // echo $form->field($model, 'idservicios') ?>
    <?php // echo $form->field($model, 'id_user') ?>
    <?php // echo $form->field($model, 'id') ?>

    <div class="form-group">
        <?php echo Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?php echo Html::resetButton('Reset', ['class' => 'btn btn-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
