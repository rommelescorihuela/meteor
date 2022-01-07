<?php

/**
 * @var yii\web\View $this
 * @var backend\models\UsuarioTaller $model
 */

$this->title = Yii::t('backend', 'Update {modelClass}: ', [
    'modelClass' => 'Usuario Taller',
]) . ' ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => Yii::t('backend', 'Usuario Tallers'), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = Yii::t('backend', 'Update');
?>
<div class="usuario-taller-update">

    <?php echo $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
