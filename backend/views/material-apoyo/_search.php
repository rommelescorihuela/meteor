<?php

use yii\helpers\Html;
use yii\bootstrap4\ActiveForm;

/**
 * @var yii\web\View $this
 * @var backend\models\MaterialApoyo $model
 * @var yii\bootstrap4\ActiveForm $form
 */
?>

<div class="material-apoyo-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?php echo $form->field($model, 'id') ?>
    <?php echo $form->field($model, 'nombre') ?>
    <?php echo $form->field($model, 'tipo') ?>
    <?php echo $form->field($model, 'id_taller') ?>
    <?php echo $form->field($model, 'file') ?>
    <?php // echo $form->field($model, 'file_src_filename') ?>
    <?php // echo $form->field($model, 'file_web_filename') ?>

    <div class="form-group">
        <?php echo Html::submitButton(Yii::t('backend', 'Search'), ['class' => 'btn btn-primary']) ?>
        <?php echo Html::resetButton(Yii::t('backend', 'Reset'), ['class' => 'btn btn-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
