<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/**
 * @var yii\web\View $this
 * @var backend\models\DatosJuridicos $model
 */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Datos Juridicos', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="datos-juridicos-view">
    <div class="card">
        <div class="card-header">
            <?php echo Html::a('Update', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
            <?php echo Html::a('Delete', ['delete', 'id' => $model->id], [
                'class' => 'btn btn-danger',
                'data' => [
                    'confirm' => 'Are you sure you want to delete this item?',
                    'method' => 'post',
                ],
            ]) ?>
        </div>
        <div class="card-body">
            <?php echo DetailView::widget([
                'model' => $model,
                'attributes' => [
                    'estado_oficina',
                    'oficina_registro',
                    'numero',
                    'folio',
                    'tomo',
                    'fecha',
                    'rif',
                    'nit',
                    'iddatosorganizacion',
                    'id',
                    
                ],
            ]) ?>
        </div>
    </div>
</div>
