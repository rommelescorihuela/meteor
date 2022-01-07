<?php

/**
 * @var yii\web\View $this
 * @var backend\models\Parroquia $model
 */

$this->title = 'Update Parroquia: ' . ' ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Parroquias', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="parroquia-update">

    <?php echo $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
