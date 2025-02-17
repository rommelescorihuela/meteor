<?php

use yii\helpers\Html;
use yii\grid\GridView;

/**
 * @var yii\web\View $this
 * @var backend\models\MaterialApoyoSearch $searchModel
 * @var yii\data\ActiveDataProvider $dataProvider
 */

$this->title = Yii::t('backend', 'Material Apoyos');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="material-apoyo-index">
    <div class="card">
        <div class="card-header">
            <?php echo Html::a(Yii::t('backend', 'Create {modelClass}', [
    'modelClass' => 'Material Apoyo',
]), ['create?id='.$id_taller], ['class' => 'btn btn-success']) ?>
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
                    'tipo',
                    'id_taller',
                    [
                     'attribute' => 'file',
                     'format' => 'raw',
                     'value' => function ($model) {   
                        if ($model->file_web_filename!='')
                          return '<a href="'.Yii::$app->homeUrl. '/../../common/uploads/material_apoyo/'.$model->file_web_filename.'" width="50px" height="auto">Ver Archivo</a>'; else return 'no file';
                     },
                   ],
                    
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
