<?php

use yii\helpers\Html;
use yii\grid\GridView;

/**
 * @var yii\web\View $this
 * @var backend\models\RespuestasSearch $searchModel
 * @var yii\data\ActiveDataProvider $dataProvider
 */

$this->title = Yii::t('backend', 'Respuestas');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="respuestas-index">
    <div class="card">

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
                    [
                        'label' => 'taller',
                        'value' =>function($model){
                            $pregunta = \backend\models\Preguntas::find()->where(['id' => $model->id_pregunta])->one();
                            $taller = \backend\models\Taller::find()->where(['id' => $pregunta->id_taller])->one();
                            return $taller->nombre;
                        }
                    ],
                    [
                        'label' => 'Alumno',
                        'value' => function($model){
                            return $model->alumno->nombre.' '.$model->alumno->apellido;
                        }
                    ],
                    [
                        'label' => 'Pregunta',
                        'attribute' => 'id_pregunta',
                        'value' => 'pregunta.pregunta',

                    ],
                    'respuesta',
                    //'id_alumno_juridico',
                    
                    ['class' => \common\widgets\ActionColumn::class],
                ],
            ]); ?>
    
        </div>
        <div class="card-footer">
            <?php echo getDataProviderSummary($dataProvider) ?>
        </div>
    </div>

</div>
