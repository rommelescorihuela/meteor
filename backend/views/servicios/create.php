<?php

/**
 * @var yii\web\View $this
 * @var backend\models\Servicios $model
 */

$this->title = 'Create Servicios';
$this->params['breadcrumbs'][] = ['label' => 'Servicios', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="servicios-create">

    <?php echo $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
