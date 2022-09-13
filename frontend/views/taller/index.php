<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;
/* @var $this yii\web\View */
/* @var $searchModel frontend\models\TallerSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Talleres diponibles';
//$this->params['breadcrumbs'][] = $this->title;
?>
<div class="taller-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?php Html::a('Create Taller', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php Pjax::begin(); ?>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'nombre',

            [
                        'class' => \common\widgets\ActionColumn::class,
                        'template' => '{material} {preguntas}',
                        'header' => 'Acciones',
                        'buttons'=> [
                            'material' => function ($url, $model) {
                                return Html::a(" Material de apoyo ", "../material-apoyo/index?id=".$model->id, [
                                    'title' => "",
                                    'class' => 'fas fa-book',
                                ]);
                            },
                            'preguntas' => function ($url, $model) {
                                return Html::a(" Preguntas", "../preguntas/index?id=".$model->id, [
                                    'title' => "",
                                    'class' => 'fas fa-question',
                                ]);
                            },

                        ],
                    ],
        ],
    ]); ?>

    <?php Pjax::end(); ?>

</div>
