<?php

/**
 * @var yii\web\View $this
 * @var backend\models\Respuestas $model
 */

$this->title = Yii::t('backend', 'Update {modelClass}: ', [
    'modelClass' => 'Respuestas',
]) . ' ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => Yii::t('backend', 'Respuestas'), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = Yii::t('backend', 'Update');
?>
<div class="respuestas-update">

    <?php echo $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
