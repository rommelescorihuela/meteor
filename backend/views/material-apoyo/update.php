<?php

/**
 * @var yii\web\View $this
 * @var backend\models\MaterialApoyo $model
 */

$this->title = Yii::t('backend', 'Update {modelClass}: ', [
    'modelClass' => 'Material Apoyo',
]) . ' ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => Yii::t('backend', 'Material Apoyos'), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = Yii::t('backend', 'Update');
?>
<div class="material-apoyo-update">

    <?php echo $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
