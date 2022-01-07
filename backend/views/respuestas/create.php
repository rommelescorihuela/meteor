<?php

/**
 * @var yii\web\View $this
 * @var backend\models\Respuestas $model
 */

$this->title = Yii::t('backend', 'Create {modelClass}', [
    'modelClass' => 'Respuestas',
]);
$this->params['breadcrumbs'][] = ['label' => Yii::t('backend', 'Respuestas'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="respuestas-create">

    <?php echo $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
