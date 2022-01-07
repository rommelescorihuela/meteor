<?php

/**
 * @var yii\web\View $this
 * @var backend\models\DatosJuridicos $model
 */

$this->title = 'Update Datos Juridicos: ' . ' ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Datos Juridicos', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="datos-juridicos-update">

    <?php echo $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
