<?php

/**
 * @var yii\web\View $this
 * @var backend\models\Estado $model
 */

$this->title = 'Create Estado';
$this->params['breadcrumbs'][] = ['label' => 'Estados', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="estado-create">

    <?php echo $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
