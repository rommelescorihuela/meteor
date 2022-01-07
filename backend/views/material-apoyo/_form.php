<?php

use yii\helpers\Html;
use yii\bootstrap4\ActiveForm;
use kartik\file\FileInput;
/**
 * @var yii\web\View $this
 * @var backend\models\MaterialApoyo $model
 * @var yii\bootstrap4\ActiveForm $form
 */
?>

<div class="material-apoyo-form">
    <?php 
        $form = ActiveForm::begin([
            'options'=>['enctype'=>'multipart/form-data']
        ]); 
    ?>
        <div class="card">
            <div class="card-body">
                <?php echo $form->errorSummary($model); ?>

                <?php echo $form->field($model, 'nombre')->textInput() ?>
                <?php echo $form->field($model, 'tipo')->textInput() ?>
                <?php echo $form->field($model, 'id_taller')->textInput() ?>
                <?= $form->field($model, 'file')->widget(FileInput::classname(), [
                    'options' => ['accept' => 'image/*'],
                    'pluginOptions'=>['allowedFileExtensions'=>['jpg','gif','png','pdf','mp4'],'showUpload' => false,],
                    ]);   
                ?>
                
            </div>
            <div class="card-footer">
                <?php echo Html::submitButton($model->isNewRecord ? Yii::t('backend', 'Create') : Yii::t('backend', 'Update'), ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
            </div>
        </div>
    <?php ActiveForm::end(); ?>
</div>
