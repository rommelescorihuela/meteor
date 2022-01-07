<?php

/**
 * @var yii\web\View $this
 * @var backend\models\UsuarioMaterial $model
 */

$this->title = Yii::t('backend', 'Update {modelClass}: ', [
    'modelClass' => 'Usuario Material',
]) . ' ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => Yii::t('backend', 'Usuario Materials'), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = Yii::t('backend', 'Update');
?>
<div class="usuario-material-update">

    <?php echo $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
