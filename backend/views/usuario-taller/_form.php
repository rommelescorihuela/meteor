<?php

use yii\helpers\Html;
use yii\bootstrap4\ActiveForm;

/**
 * @var yii\web\View $this
 * @var backend\models\UsuarioTaller $model
 * @var yii\bootstrap4\ActiveForm $form
 */
?>

<div class="usuario-taller-form">
    <?php $form = ActiveForm::begin(); ?>
        <div class="card">
            <div class="card-body">
                <?php echo $form->errorSummary($model); ?>

                <?php echo $form->field($model, 'id_alumno')->textInput() ?>
                <?php echo $form->field($model, 'id_taller')->textInput() ?>
                <?php echo $form->field($model, 'visto')->textInput() ?>
                <?php echo $form->field($model, 'token')->textInput() ?>
                <?php echo $form->field($model, 'id_alumno_juridico')->textInput() ?>
                
            </div>
            <div class="card-footer">
                <?php echo Html::submitButton($model->isNewRecord ? Yii::t('backend', 'Create') : Yii::t('backend', 'Update'), ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
            </div>
        </div>
    <?php ActiveForm::end(); ?>
</div>
