<?php

use yii\helpers\Html;
use yii\grid\GridView;


/* @var $this yii\web\View */
/* @var $searchModel frontend\models\PreguntasSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Preguntas';
//$this->params['breadcrumbs'][] = $this->title;
?>
<div class="preguntas-index">

    <h1><?= Html::encode($this->title) ?></h1>


    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            'id',
            'id_taller',
            [
                'label'=>'Taller',
                'attribute'=>'id_taller',
                'value'=>function($model){
                    $taller = \frontend\models\Taller::find()->where(['id' => $model->id_taller])->one();
                    return $taller->nombre;
                }
            ],
            'pregunta',
            [
                        'class' => \common\widgets\ActionColumn::class,
                        'header'=>'Respuesta',
                        'template' => '<div class="pull-right" style="text-align: center;">{respuesta}</div>',
                        'buttons'=> [
                            'respuesta' => function ($url, $model) {
                                $respuesta = \frontend\models\Respuestas::find()->where(['id_pregunta' => $model->id])->one();
                                //$pregunta = \frontend\models\Preguntas::find()->where(['id' => $model->id])->one();
                                if(isset($respuesta)){
                                    return Html::a(" Actualizar", "../respuestas/update?id=".$model->id, [
                                        'title' => "Responder",
                                        'class' => 'fa fa-clipboard-list',
                                    ]);

                                }
                                else{
                                    return Html::a(" Responder", "../respuestas/create?id=".$model->id, [
                                        'title' => "Responder",
                                        'class' => 'fa fa-clipboard-list',
                                    ]);
                                }
                            },

                        ],
                    ],
        ],
    ]); ?>


</div>
