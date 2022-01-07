<?php

use yii\helpers\Html;
use yii\bootstrap4\ActiveForm;

/**
 * @var yii\web\View $this
 * @var backend\models\UsuarioTaller $model
 * @var yii\bootstrap4\ActiveForm $form
 */
?>

<div class="usuario-taller-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?php echo $form->field($model, 'id') ?>
    <?php echo $form->field($model, 'id_alumno') ?>
    <?php echo $form->field($model, 'id_taller') ?>
    <?php echo $form->field($model, 'visto') ?>
    <?php echo $form->field($model, 'token') ?>
    <?php // echo $form->field($model, 'id_alumno_juridico') ?>

    <div class="form-group">
        <?php echo Html::submitButton(Yii::t('backend', 'Search'), ['class' => 'btn btn-primary']) ?>
        <?php echo Html::resetButton(Yii::t('backend', 'Reset'), ['class' => 'btn btn-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
