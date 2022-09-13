<?php

use yii\helpers\Html;
use yii\grid\GridView;

/**
 * @var yii\web\View $this
 * @var backend\models\PreguntasSearch $searchModel
 * @var yii\data\ActiveDataProvider $dataProvider
 */

$this->title = Yii::t('backend', 'Preguntas');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="preguntas-index">
    <div class="card">
        <div class="card-header">
            <?php echo Html::a(Yii::t('backend', 'Create {modelClass}', [
    'modelClass' => 'Preguntas',
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
                    [
                        'label'=>'Taller',
                        'attribute'=>'id_taller',
                        'value'=>function($model){
                            $taller = \backend\models\Taller::find()->where(['id' => $model->id_taller])->one();
                            return $taller->nombre;
                        }
                    ],
                    'pregunta',
                    
                    ['class' => \common\widgets\ActionColumn::class],
                ],
            ]); ?>
    
        </div>
        <div class="card-footer">
            <?php echo getDataProviderSummary($dataProvider) ?>
        </div>
    </div>

</div>
