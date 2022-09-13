<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model frontend\models\MaterialApoyo */

$this->title = 'Create Material Apoyo';
$this->params['breadcrumbs'][] = ['label' => 'Material Apoyos', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="material-apoyo-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
