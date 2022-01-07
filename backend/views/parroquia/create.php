<?php

/**
 * @var yii\web\View $this
 * @var backend\models\Parroquia $model
 */

$this->title = 'Create Parroquia';
$this->params['breadcrumbs'][] = ['label' => 'Parroquias', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="parroquia-create">

    <?php echo $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
