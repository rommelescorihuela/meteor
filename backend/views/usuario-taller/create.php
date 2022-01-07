<?php

/**
 * @var yii\web\View $this
 * @var backend\models\UsuarioTaller $model
 */

$this->title = Yii::t('backend', 'Create {modelClass}', [
    'modelClass' => 'Usuario Taller',
]);
$this->params['breadcrumbs'][] = ['label' => Yii::t('backend', 'Usuario Tallers'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="usuario-taller-create">

    <?php echo $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
