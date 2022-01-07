<?php

/**
 * @var yii\web\View $this
 * @var backend\models\Documentos $model
 */

$this->title = 'Update Documentos: ' . ' ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Documentos', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="documentos-update">

    <?php echo $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
