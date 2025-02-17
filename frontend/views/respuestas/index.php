<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel frontend\models\RespuestasSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

//$this->title = 'Respuestas';
//$this->params['breadcrumbs'][] = $this->title;
?>
<div class="respuestas-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'id_pregunta',
            //'id_alumno',
            'respuesta',
            //'id_alumno_juridico',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
