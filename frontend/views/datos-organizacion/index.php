<?php

use yii\helpers\Html;
use kartik\grid\GridView;
use yii\widgets\Pjax;
/* @var $this yii\web\View */
/* @var $searchModel app\models\search\DatosOrganizacionSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Solicitudes de Organizacion de Usuarios y Usuarias';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="datos-organizacion-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Crear Solicitudes de Organizacion de Usuarios y Usuarias', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php Pjax::begin(); ?>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'nombre_o1',
            'nombre_o2',
            'nombre_o3',
            'id_user',
            //'funcionario',
            //'fecha_registro',
            //'direccion',
            //'id_direccion',
            //'n_integrantes',
            //'observaciones',
            //'servicios',
            //'id_personal',
            //'id_juridico',

            [
                'class' => 'kartik\grid\ActionColumn',
                'template' => '{view} {update} {delete} {pdf}',
                'buttons'=> [
                    'pdf' => function ($url, $model) {
                              return Html::a('<i class="far fa-file-pdf"></i>', $url, [
                                  'title' => "Activate",
                                  //'class' => 'btn btn-xs btn-success',
                                  'data' => [
                                       'method' => 'post',
                                       //'confirm' => 'Are you sure? This will Activate this.',
                                  ],
                              ]);
                           }
                       ],
            ],
        ],
    ]); ?>

    <?php Pjax::end(); ?>

</div>
