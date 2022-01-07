<?php

/**
 * @var yii\web\View $this
 * @var backend\models\Taller $model
 */

$this->title = Yii::t('backend', 'Create {modelClass}', [
    'modelClass' => 'Taller',
]);
$this->params['breadcrumbs'][] = ['label' => Yii::t('backend', 'Tallers'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="taller-create">

    <?php echo $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
