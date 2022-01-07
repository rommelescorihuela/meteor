<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;
/* @var $this yii\web\View */
/* @var $searchModel frontend\models\TallerSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Tallers';
$this->params['breadcrumbs'][] = $this->title;
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
                        'template' => '{view} {update} {delete} {material}',
                        'buttons'=> [
                            'view' => function ($url, $model) {
                                return Html::a("", $url, [
                                    'title' => "",
                                    'class' => 'fas fa-eye',
                                ]);
                            },
                            'update' => function ($url, $model) {
                                return Html::a("", $url, [
                                    'title' => "",
                                    'class' => 'fas fa-edit',
                                ]);
                            },
                            'delete' => function ($url, $model) {
                                return Html::a("", $url, [
                                    'title' => "",
                                    'class' => 'fas fa-trash',
                                ]);
                            },
                            'material' => function ($url, $model) {
                                return Html::a("", "../material-apoyo/index?id=".$model->id, [
                                    'title' => "",
                                    'class' => 'fas fa-book',
                                ]);
                            },

                        ],
                    ],
        ],
    ]); ?>

    <?php Pjax::end(); ?>

</div>
