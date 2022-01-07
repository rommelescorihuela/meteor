<?php

use yii\helpers\Html;
use yii\bootstrap4\ActiveForm;

/**
 * @var yii\web\View $this
 * @var backend\models\Documentos $model
 * @var yii\bootstrap4\ActiveForm $form
 */
?>

<div class="documentos-form">
    <?php $form = ActiveForm::begin(); ?>
        <div class="card">
            <div class="card-body">
                <?php echo $form->errorSummary($model); ?>

                <?php echo $form->field($model, 'documento')->textInput() ?>
                <?php echo $form->field($model, 'id_organizacion')->textInput() ?>
                <?php echo $form->field($model, 'tamano')->textInput() ?>
                <?php echo $form->field($model, 'create_at')->textInput() ?>
                <?php echo $form->field($model, 'orden')->textInput() ?>
                <?php echo $form->field($model, 'tipo')->textInput() ?>
                <?php echo $form->field($model, 'base_url')->textInput() ?>
                <?php echo $form->field($model, 'path')->textInput() ?>
                
            </div>
            <div class="card-footer">
                <?php echo Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
            </div>
        </div>
    <?php ActiveForm::end(); ?>
</div>
