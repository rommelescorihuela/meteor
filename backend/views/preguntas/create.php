<?php

/**
 * @var yii\web\View $this
 * @var backend\models\Preguntas $model
 */

$this->title = Yii::t('backend', 'Create {modelClass}', [
    'modelClass' => 'Preguntas',
]);
$this->params['breadcrumbs'][] = ['label' => Yii::t('backend', 'Preguntas'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="preguntas-create">

    <?php echo $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
