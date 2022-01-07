<?php

/**
 * @var yii\web\View $this
 * @var backend\models\UsuarioMaterial $model
 */

$this->title = Yii::t('backend', 'Create {modelClass}', [
    'modelClass' => 'Usuario Material',
]);
$this->params['breadcrumbs'][] = ['label' => Yii::t('backend', 'Usuario Materials'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="usuario-material-create">

    <?php echo $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
