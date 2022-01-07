<?php

/**
 * @var yii\web\View $this
 * @var backend\models\TipoSolicitud $model
 */

$this->title = 'Create Tipo Solicitud';
$this->params['breadcrumbs'][] = ['label' => 'Tipo Solicituds', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="tipo-solicitud-create">

    <?php echo $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
