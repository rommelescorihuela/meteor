<?php

use yii\helpers\Html;
use yii\bootstrap4\ActiveForm;

/**
 * @var yii\web\View $this
 * @var backend\models\Preguntas $model
 * @var yii\bootstrap4\ActiveForm $form
 */
?>

<div class="preguntas-form">
    <?php $form = ActiveForm::begin(); ?>
        <div class="card">
            <div class="card-body">
                <?php echo $form->errorSummary($model); ?>

                <?= $form->field($model, 'id_taller')->widget(\kartik\select2\Select2::classname(), [
                        'language' => 'es',
                        'theme' => \kartik\select2\Select2::THEME_KRAJEE_BS4,
                        'data' => \yii\helpers\ArrayHelper::map(\backend\models\Taller::find()->asArray()->all(), 'id', 'nombre'),
                        'options' => ['placeholder' => 'seleccione un Taller...'],
                        'pluginOptions' => [
                            'allowClear' => false
                        ]
                    ]); ?>
                <?php echo $form->field($model, 'pregunta')->textInput() ?>
                
            </div>
            <div class="card-footer">
                <?php echo Html::submitButton($model->isNewRecord ? Yii::t('backend', 'Create') : Yii::t('backend', 'Update'), ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
            </div>
        </div>
    <?php ActiveForm::end(); ?>
</div>
