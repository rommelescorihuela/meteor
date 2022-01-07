<?php

use yii\helpers\Html;
use yii\grid\GridView;

/**
 * @var yii\web\View $this
 * @var backend\models\search\DatosOrganizacionSearch $searchModel
 * @var yii\data\ActiveDataProvider $dataProvider
 */

$this->title = 'Datos Organizacions';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="datos-organizacion-index">
    <div class="card">
        <div class="card-header">
            <?php echo Html::a('Create Datos Organizacion', ['create'], ['class' => 'btn btn-success']) ?>
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

                    'nombre_o1',
                    'nombre_o2',
                    'nombre_o3',
                    'funcionario',
                    'fecha_registro',
                    // 'direccion',
                    // 'id_direccion',
                    // 'n_integrantes',
                    // 'observaciones',
                    // 'servicios',
                    // 'idtiposolicitud',
                    // 'idparroquia',
                    // 'idservicios',
                    // 'id_user',
                    // 'id',
                    
                    ['class' => \common\widgets\ActionColumn::class],
                ],
            ]); ?>
    
        </div>
        <div class="card-footer">
            <?php echo getDataProviderSummary($dataProvider) ?>
        </div>
    </div>

</div>
