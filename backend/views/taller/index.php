<?php

use yii\helpers\Html;
use yii\grid\GridView;

/**
 * @var yii\web\View $this
 * @var backend\models\TallerSearch $searchModel
 * @var yii\data\ActiveDataProvider $dataProvider
 */

$this->title = Yii::t('backend', 'Tallers');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="taller-index">
    <div class="card">
        <div class="card-header">
            <?php echo Html::a(Yii::t('backend', 'Create {modelClass}', [
    'modelClass' => 'Taller',
]), ['create'], ['class' => 'btn btn-success']) ?>
        </div>

        <div class="card-body p-0">
            <?php // echo $this->render('_search', ['model' => $searchModel]); ?>
    
            <?php echo GridView::widget([
                'layout' => "{items}\n{pager}",
                'options' => [
                    'class' => ['gridview', 'table-responsive'],
                ],
                'tableOptions' => [
                    'class' => ['table', 'text-nowrap', 'table-striped', 'table-bordered', 'mb-0'],
                ],
                'dataProvider' => $dataProvider,
                'filterModel' => $searchModel,
                'columns' => [
                    ['class' => 'yii\grid\SerialColumn'],

                    'id',
                    'nombre',
                    
                    [
                        'class' => \common\widgets\ActionColumn::class,
                        'template' => '{view} {update} {delete} {material} {pregunta}',
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
                            'pregunta' => function ($url, $model) {
                                return Html::a("", "../preguntas/index", [
                                    'title' => "",
                                    'class' => 'fas fa-question',
                                ]);
                            },

                        ],
                    ],
                ],
            ]); ?>
    
        </div>
        <div class="card-footer">
            <?php echo getDataProviderSummary($dataProvider) ?>
        </div>
    </div>

</div>
