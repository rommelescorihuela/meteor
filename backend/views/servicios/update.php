<?php

/**
 * @var yii\web\View $this
 * @var backend\models\Servicios $model
 */

$this->title = 'Update Servicios: ' . ' ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Servicios', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="servicios-update">

    <?php echo $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
