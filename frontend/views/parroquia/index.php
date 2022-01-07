<?php

use yii\helpers\ArrayHelper;
use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;
use kartik\select2\Select2;
use frontend\models\Municipio;
/* @var $this yii\web\View */
/* @var $searchModel app\models\search\ParroquiaSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Parroquias';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="parroquia-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Parroquia', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php Pjax::begin(); ?>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            //'id',
            'parroquia',
            [
            'label' => 'Municipio',    
            'attribute' => 'idmunicipio',
            'value' => 'idmunicipio0.municipio',
            'format' => 'text',
            'filter' => Select2::widget([
                        'model' => $searchModel,
                        'attribute' => 'idmunicipio',
                        'theme' => Select2::THEME_DEFAULT,
                        'data' => ArrayHelper::map(Municipio::find()->orderBy('id')->all(),
                        'id', 'municipio'),
                        'options' =>
                            ['placeholder' => 'Seleccione'],
                        'pluginOptions' => [ 'allowClear' => true ],
                ]),
            ],    

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

    <?php Pjax::end(); ?>

</div>
