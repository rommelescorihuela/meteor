<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model frontend\models\Preguntas */

$this->title = 'Create Preguntas';
$this->params['breadcrumbs'][] = ['label' => 'Preguntas', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="preguntas-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
