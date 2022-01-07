<?php

/**
 * @var yii\web\View $this
 * @var backend\models\Estado $model
 */

$this->title = 'Update Estado: ' . ' ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Estados', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="estado-update">

    <?php echo $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
