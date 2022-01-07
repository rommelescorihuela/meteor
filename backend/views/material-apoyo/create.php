<?php

/**
 * @var yii\web\View $this
 * @var backend\models\MaterialApoyo $model
 */

$this->title = Yii::t('backend', 'Create {modelClass}', [
    'modelClass' => 'Material Apoyo',
]);
$this->params['breadcrumbs'][] = ['label' => Yii::t('backend', 'Material Apoyos'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="material-apoyo-create">

    <?php echo $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
