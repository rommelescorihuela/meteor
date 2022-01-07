<?php

/**
 * @var yii\web\View $this
 * @var backend\models\DatosPersonales $model
 */

$this->title = 'Update Datos Personales: ' . ' ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Datos Personales', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="datos-personales-update">

    <?php echo $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
