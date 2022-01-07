<?php

/**
 * @var yii\web\View $this
 * @var backend\models\DatosJuridicos $model
 */

$this->title = 'Create Datos Juridicos';
$this->params['breadcrumbs'][] = ['label' => 'Datos Juridicos', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="datos-juridicos-create">

    <?php echo $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
