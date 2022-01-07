<?php

use yii\helpers\Html;
//use yii\widgets\DetailView;
use kartik\detail\DetailView;
use kartik\grid\GridView;
use yii\data\ActiveDataProvider;
use backend\models\DatosPersonales;



/* @var $this yii\web\View */
/* @var $model app\models\DatosOrganizacion */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Datos Organizacions', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<style type="text/css" media="screen">
h5.panel-title {
    font-size: 16px;
    font-weight: bold;
}
.card-header.bg-light {
    background-color: #bee5eb !important;
}    
.kv-panel-before {
    display: none;
}
.summary {
    display: none;
}
</style>
<div class="datos-organizacion-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
    [
        'group'=>true,
        'label'=>'Datos de la organización',
        'rowOptions'=>['class'=>'table-info']
    ],
    [
        'columns' => [
            [
                'attribute'=>'fecha_registro', 
            ],
            [
                'label' => 'Tipo de solicitud',
                'value' =>$model->idtiposolicitud0->tipo,
            ],
        ],
    ],
    [
        'columns' => [
            [
                'attribute'=>'nombre_o1', 
            ],
            [
                'attribute'=>'nombre_o2',
            ],
            [
                'attribute'=>'nombre_o3', 
            ],
        ],
    ],
    [
        'columns' => [
            [
                'label' => 'Estado',
                'value' =>$model->idparroquia0->idmunicipio0->idestado0->estado,
            ],
            [
                'label' => 'Municipio',
                //'attribute'=>'idmunicipio0.municipio',
                'value' =>$model->idparroquia0->idmunicipio0->municipio,
            ],
            [
                'label' => 'Parroquia',
                'value' =>$model->idparroquia0->parroquia,
            ],
        ],
    ],
    [
        'attribute'=>'direccion',
    ],
    [
        'columns' => [
            [
                'attribute'=>'n_integrantes', 
            ],
            [
                'attribute'=>'observaciones', 
            ],
        ],
    ],
    [
        'attribute'=>'servicios',
        'format'=>'raw',
        'value'=>'<span class="text-justify"><em>' . $model->idservicios0->servicio . '</em></span>',
    ]
],
    ]) ?>

    <?php
    $query = DatosPersonales::find()
    ->where(['id_organizacion' => $model->id]);
    //->all();
    $provider = new ActiveDataProvider([
    'query' => $query,
    'pagination' => [
        'pageSize' => 10,
    ],
    'sort' => [
        'defaultOrder' => [
            'nombre' => SORT_DESC,
           
        ]
    ],
]);
    echo GridView::widget([
    'dataProvider'=> $provider,
    'panel' => [
        'heading'=>'<h5 class="panel-title">Integrantes de la organizacion</h5>',
        'footer'=>false,
    ],
    'columns' => [
    ['class' => 'yii\grid\SerialColumn'],
          //'id',
          'nombre',
          'apellido',
      ],
]); 
?>

</div>
<?php if (!empty($model->documentos)): ?>
            <h3><?php echo "Archivos Adjuntos"?></h3>
            <ul id="article-attachments">
                <?php foreach ($model->documentos as $attachment): ?>
                    <li>
                        <?php echo \yii\helpers\Html::a(
                            Html::encode($attachment->documento),
                            ['attachment-download', 'id' => $attachment->id])
                        ?>
                        (<?php echo Yii::$app->formatter->asSize($attachment->tamano) ?>)
                    </li>
                <?php endforeach; ?>
            </ul>
        <?php endif; ?>