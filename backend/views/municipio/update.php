<?php

/**
 * @var yii\web\View $this
 * @var backend\models\Municipio $model
 */

$this->title = 'Update Municipio: ' . ' ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Municipios', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="municipio-update">

    <?php echo $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
