<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;
/* @var $this yii\web\View */
/* @var $searchModel frontend\models\MaterialApoyoSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Material de Apoyo';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="material-apoyo-index">

    <h1><?= Html::encode($this->title) ?></h1>
    
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
                          return '<a  href="'.Yii::$app->homeUrl. '/../../common/uploads/material_apoyo/'.$model->file_web_filename.'" target="_blank">Ver Archivo</a>'; else return 'no file';
                     },
                   ],
                   [
                    'label' => 'Preguntas',
                    'value' => function($model){
                        return $model->id_taller;
                    }
                   ]
                    
                ],
            ]); ?>

    

</div>
