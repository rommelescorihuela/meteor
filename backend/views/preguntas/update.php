<?php

/**
 * @var yii\web\View $this
 * @var backend\models\Preguntas $model
 */

$this->title = Yii::t('backend', 'Update {modelClass}: ', [
    'modelClass' => 'Preguntas',
]) . ' ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => Yii::t('backend', 'Preguntas'), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = Yii::t('backend', 'Update');
?>
<div class="preguntas-update">

    <?php echo $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
