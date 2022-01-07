<?php

/**
 * @var yii\web\View $this
 * @var backend\models\DatosPersonales $model
 */

$this->title = 'Create Datos Personales';
$this->params['breadcrumbs'][] = ['label' => 'Datos Personales', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="datos-personales-create">

    <?php echo $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
