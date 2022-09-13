<?php

use yii\helpers\Html;
use yii\helpers\ArrayHelper;
use yii\helpers\Url;
use yii\widgets\ActiveForm;
use kartik\select2\Select2;
use kartik\depdrop\DepDrop;
use wbraganca\dynamicform\DynamicFormWidget;
use trntv\filekit\widget\Upload;

/* @var $this yii\web\View */
/* @var $model app\models\DatosOrganizacion */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="datos-organizacion-form container">
  <?php $form = ActiveForm::begin(['id' => 'dynamic-form']); ?>
  <?= $form->field($model, 'id')->hiddenInput()->label(false) ?>
  <div class="row"> 
    <div class="col-md-6">
      
    <?php
      echo $form->field($model, 'idtiposolicitud')->widget(Select2::classname(), [
        'data' => ArrayHelper::map($datats,'id','tipo'),
        'options' => ['placeholder' => 'Tipo de Solicitud'],
        'pluginOptions' => [
        'allowClear' => true
        ],
      ])->label('Tipo de Solicitud');
    ?>
    </div>
    <div class="col-md-6">
      <?php echo $form->field($model, 'fecha_registro')->textInput(['value' => date('Y-m-d'),'readonly'=>true])->label('Tipo de Solicitud') ?>
    </div>
  </div>
  <div class="row">
    <div class="col-md-4">
      <?= $form->field($model, 'nombre_o1')->textInput()->label('1° Opcion del nombre la organizacion') ?>
    </div>
    <div class="col-md-4">
      <?= $form->field($model, 'nombre_o2')->textInput()->label('2° Opcion del nombre la organizacion') ?>
    </div>
    <div class="col-md-4">
      <?= $form->field($model, 'nombre_o3')->textInput()->label('3° Opcion del nombre la organizacion') ?>
    </div>
  </div>

    <?php $form->field($model, 'funcionario')->textInput() ?>


<div class="row">
  <div class="col-md-4">
    
<?php
  echo $form->field($model, 'estado')->widget(Select2::classname(), [
    'data' => ArrayHelper::map($dataes,'id','estado'),
    'options' => [
    'placeholder' => 'Seleccione ',
    'id' => 'estado-id',
    'value' => $estado,
    ],
    'pluginOptions' => [
    'allowClear' => true
    ],
  ])->label('Estado');
?>
  </div>
  <div class="col-md-4">
<?php
  echo $form->field($model, 'municipio')->widget(DepDrop::classname(), [
    'type' => DepDrop::TYPE_SELECT2,
    'data' => ArrayHelper::map($datamun,'id','municipio'),
    'options' => [
    'id' => 'municipio-id', 
    'value' => $municipio,
    'placeholder' => 'Seleccione',  
    ],
    'pluginOptions'=>[
    'depends'=>['estado-id'],
    'loadingText' => 'Cargando ...',
    'placeholder'=>'Seleccione',
    'url'=>Url::to(['/datos-organizacion/municipio'])
    ]
  ])->label('Municipio');
?>
</div>
<div class="col-md-4">
<?php
echo $form->field($model, 'idparroquia')->widget(DepDrop::classname(), [
  'type' => DepDrop::TYPE_SELECT2,
  'data' => ArrayHelper::map($datapar,'id','parroquia'),
  'options' => [
  'id' => 'parroquia-id', 
  'placeholder' => 'Seleccione',  
  ],
  'pluginOptions'=>[
  'depends'=>['municipio-id'],
  'loadingText' => 'Cargando ...',
  'placeholder'=>'Seleccione',
  'url'=>Url::to(['/datos-organizacion/parroquia'])
  ]
])->label('Parroquia');
?>
</div>
</div>
<div class="row">
  <div class="col-md-12">
    <?= $form->field($model, 'direccion')->textArea() ?>
  </div>  
</div>
<div class="row">
  <div class="col-md-2">
    <?= $form->field($model, 'n_integrantes')->textInput()->label('N° Integrantes') ?>
  </div>
  <div class="col-md-4">
    <?php
      echo $form->field($model, 'idservicios')->widget(Select2::classname(), [
        'data' => ArrayHelper::map($dataser,'id','servicio'),
        'options' => ['placeholder' => 'Servicios'],
        'pluginOptions' => [
        'allowClear' => true
        ],
      ])->label('Servicios');
    ?>
  </div>
  <div class="col-md-6">
    <?= $form->field($model, 'observaciones')->textArea() ?>
  </div>
</div>

    <div class="panel panel-default">
        <div class="panel-heading"><h3><i class="fa fa-user"></i> Integrantes</h3></div>
        <div class="panel-body">
             <?php DynamicFormWidget::begin([
                'widgetContainer' => 'dynamicform_wrapper', // required: only alphanumeric characters plus "_" [A-Za-z0-9_]
                'widgetBody' => '.container-items', // required: css class selector
                'widgetItem' => '.item', // required: css class
                'limit' => 4, // the maximum times, an element can be cloned (default 999)
                'min' => 1, // 0 or 1 (default 1)
                'insertButton' => '.add-item', // css class
                'deleteButton' => '.remove-item', // css class
                'model' => $modelper[0],
                'formId' => 'dynamic-form',
                'formFields' => [
                    'full_name',
                    'address_line1',
                    'address_line2',
                    'city',
                    'state',
                    'postal_code',
                ],
            ]); ?>

            <div class="container-items"><!-- widgetContainer -->
            <?php foreach ($modelper as $i => $modelAddress): ?>
                <div class="item panel panel-default"><!-- widgetBody -->
                    <div class="panel-heading">
                        <h4 class="panel-title pull-left">Datos de los Integrantes</h4>
                        <div class="pull-right">
                            <button type="button" class="add-item btn btn-success btn-xs"><i class="fa fa-plus"></i></button>
                            <button type="button" class="remove-item btn btn-danger btn-xs"><i class="fa fa-minus"></i></button>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="panel-body">
                        <?php
                            // necessary for update action.
                            if (! $modelAddress->isNewRecord) {
                                echo Html::activeHiddenInput($modelAddress, "[{$i}]id");
                            }
                        ?>
                        <div class="row">
                          <div class="col-md-4">    
                            <?= $form->field($modelAddress, "[{$i}]nombre")->textInput(['maxlength' => true]) ?>
                          </div>
                            <div class="col-sm-4">
                                <?= $form->field($modelAddress, "[{$i}]apellido")->textInput(['maxlength' => true]) ?>
                            </div>
                            <div class="col-sm-4">
                                <?= $form->field($modelAddress, "[{$i}]cedula")->textInput(['maxlength' => true]) ?>
                            </div>
                        </div><!-- .row -->
                        <div class="row">
                            <div class="col-sm-4">
                                <?= $form->field($modelAddress, "[{$i}]telefono1")->textInput(['maxlength' => true]) ?>
                            </div>
                            <div class="col-sm-4">
                                <?= $form->field($modelAddress, "[{$i}]telefono2")->textInput(['maxlength' => true]) ?>
                            </div>
                            <div class="col-sm-4">
                                <?= $form->field($modelAddress, "[{$i}]telefono3")->textInput(['maxlength' => true]) ?>
                            </div>
                        </div><!-- .row -->
                        <div class="row">
                            <div class="col-sm-4">
                                <?= $form->field($modelAddress, "[{$i}]correo")->textInput(['maxlength' => true]) ?>
                            </div>
                            <div class="col-sm-4">
                                <?= $form->field($modelAddress, "[{$i}]profesion_oficio")->textInput(['maxlength' => true]) ?>
                            </div>
                            <div class="col-sm-4">
                                <?= $form->field($modelAddress, "[{$i}]integrante")->widget(Select2::classname(), [
                                    'data' => [1=>'Vocero Principal',2=>'Vocero Suplente',3=>'integrante'],
                                    'options' => ['placeholder' => 'Seleccione'],
                                    'pluginOptions' => [
                                    'allowClear' => true
                                    ],
                                  ]); ?>
                            </div>
                        </div><!-- .row -->
                    </div>
                </div>
            <?php endforeach; ?>
            </div>
            <?php DynamicFormWidget::end(); ?>
        </div>
    </div>
    <?php echo $form->field($model, 'adjunto')->widget(
                Upload::class,
                [
                    'url' => ['/file/storage/upload'],
                    'sortable' => true,
                    'maxFileSize' => 10000000, // 10 MiB
                    'maxNumberOfFiles' => 10,
                ]
            ) ?>
    <div class="form-group">
        <?= Html::submitButton('Siguiente', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
<script type="text/javascript" >
  $(".dynamicform_wrapper").on("beforeInsert", function(e, item) {
    console.log("beforeInsert");
});

$(".dynamicform_wrapper").on("afterInsert", function(e, item) {
    console.log("afterInsert");
});

$(".dynamicform_wrapper").on("beforeDelete", function(e, item) {
    if (! confirm("Are you sure you want to delete this item?")) {
        return false;
    }
    return true;
});

$(".dynamicform_wrapper").on("afterDelete", function(e) {
    console.log("Deleted item!");
});

$(".dynamicform_wrapper").on("limitReached", function(e, item) {
    alert("Limit reached");
});
</script>