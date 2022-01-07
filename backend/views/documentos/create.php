<?php

/**
 * @var yii\web\View $this
 * @var backend\models\Documentos $model
 */

$this->title = 'Create Documentos';
$this->params['breadcrumbs'][] = ['label' => 'Documentos', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="documentos-create">

    <?php echo $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
