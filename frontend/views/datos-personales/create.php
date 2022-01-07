<?php

use yii\helpers\Html;
use kartik\grid\GridView;
use yii\widgets\Pjax;

/* @var $this yii\web\View */
/* @var $model app\models\DatosPersonales */

$this->title = 'Agregar Integrante';
//$this->params['breadcrumbs'][] = ['label' => 'Datos Personales', 'url' => ['index']];
//$this->params['breadcrumbs'][] = $this->title;
?>
<div class="datos-personales-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>
<?php Pjax::begin(); ?>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'responsive'=>true,
        'hover'=>true,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'nombre',
            'apellido',
            'cedula',
            //'profesion_oficio',
            //'telefono1',
            //'telefono2',
            //'telefono3',
            //'correo',
            //'representante',
            //'integrante',
            //'id_organizacion',

            ['class' => '\kartik\grid\ActionColumn',],
        ],
    ]); ?>

    <?php Pjax::end(); ?>
</div>
