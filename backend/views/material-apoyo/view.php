<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/**
 * @var yii\web\View $this
 * @var backend\models\MaterialApoyo $model
 */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => Yii::t('backend', 'Material Apoyos'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="material-apoyo-view">
    <div class="card">
        <div class="card-header">
            <?php echo Html::a(Yii::t('backend', 'Update'), ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
            <?php echo Html::a(Yii::t('backend', 'Delete'), ['delete', 'id' => $model->id], [
                'class' => 'btn btn-danger',
                'data' => [
                    'confirm' => Yii::t('backend', 'Are you sure you want to delete this item?'),
                    'method' => 'post',
                ],
            ]) ?>
        </div>
        <div class="card-body">
            <?php echo DetailView::widget([
                'model' => $model,
                'attributes' => [
                    'id',
                    'nombre',
                    'tipo',
                    'id_taller',
                    'file_web_filename',
                    'file_src_filename',
                    
                ],
            ]) ?>
        </div>
        <div class="card-footer">
            <?php
                if ($model->file_web_filename!='') {
                    echo '<br /><p><img src="'.Yii::$app->homeUrl. '/uploads/status/'.$model->file_web_filename.'"></p>';
                }    
            ?>      
        </div>
    </div>
</div>
