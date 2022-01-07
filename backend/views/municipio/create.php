<?php

/**
 * @var yii\web\View $this
 * @var backend\models\Municipio $model
 */

$this->title = 'Create Municipio';
$this->params['breadcrumbs'][] = ['label' => 'Municipios', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="municipio-create">

    <?php echo $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
