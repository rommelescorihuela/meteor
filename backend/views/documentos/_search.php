<?php

use yii\helpers\Html;
use yii\bootstrap4\ActiveForm;

/**
 * @var yii\web\View $this
 * @var backend\models\Documentos $model
 * @var yii\bootstrap4\ActiveForm $form
 */
?>

<div class="documentos-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?php echo $form->field($model, 'documento') ?>
    <?php echo $form->field($model, 'id_organizacion') ?>
    <?php echo $form->field($model, 'id') ?>
    <?php echo $form->field($model, 'tamano') ?>
    <?php echo $form->field($model, 'create_at') ?>
    <?php // echo $form->field($model, 'orden') ?>
    <?php // echo $form->field($model, 'tipo') ?>
    <?php // echo $form->field($model, 'base_url') ?>
    <?php // echo $form->field($model, 'path') ?>

    <div class="form-group">
        <?php echo Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?php echo Html::resetButton('Reset', ['class' => 'btn btn-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
