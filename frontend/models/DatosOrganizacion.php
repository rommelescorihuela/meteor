<?php

namespace frontend\models;

use Yii;
use trntv\filekit\behaviors\UploadBehavior;
/**
 * This is the model class for table "datos_organizacion".
 *
 * @property string|null $nombre_o1
 * @property string|null $nombre_o2
 * @property string|null $nombre_o3
 * @property string|null $funcionario
 * @property string|null $fecha_registro
 * @property string|null $direccion
 * @property int|null $id_direccion
 * @property int|null $n_integrantes
 * @property string|null $observaciones
 * @property string|null $servicios
 * @property int|null $idtiposolicitud
 * @property int|null $idparroquia
 * @property int|null $idservicios
 * @property int|null $id_user
 * @property int $id
 * @property string|null $ciudad
 * @property array    $adjunto
 *
 * @property DatosJuridicos[] $datosJuridicos
 * @property DatosPersonales[] $datosPersonales
 * @property Documentos[] $documentos
 * @property Parroquia $idparroquia0
 * @property Servicios $idservicios0
 * @property TipoSolicitud $idtiposolicitud0
 */
class DatosOrganizacion extends \yii\db\ActiveRecord
{
  public $estado;
  public $municipio;
  public $adjunto;
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'datos_organizacion';
    }

        public function behaviors()
    {
        return [            [
                'class' => UploadBehavior::class,
                'attribute' => 'adjunto',
                'multiple' => true,
                'uploadRelation' => 'documentos',
                'pathAttribute' => 'path',
                'baseUrlAttribute' => 'base_url',
                'orderAttribute' => 'order',
                'typeAttribute' => 'tipo',
                'sizeAttribute' => 'tamano',
                'nameAttribute' => 'documento',
            ],

        ];
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['nombre_o1', 'nombre_o2', 'nombre_o3', 'funcionario', 'direccion', 'observaciones', 'servicios','ciudad'], 'string'],
            [['fecha_registro','adjunto'], 'safe'],
            [['id_direccion', 'n_integrantes', 'idtiposolicitud', 'idparroquia', 'idservicios', 'id_user'], 'default', 'value' => null],
            [['id_direccion', 'n_integrantes', 'idtiposolicitud', 'idparroquia', 'idservicios', 'id_user'], 'integer'],
            [['idparroquia'], 'exist', 'skipOnError' => true, 'targetClass' => Parroquia::className(), 'targetAttribute' => ['idparroquia' => 'id']],
            [['idservicios'], 'exist', 'skipOnError' => true, 'targetClass' => Servicios::className(), 'targetAttribute' => ['idservicios' => 'id']],
            [['idtiposolicitud'], 'exist', 'skipOnError' => true, 'targetClass' => TipoSolicitud::className(), 'targetAttribute' => ['idtiposolicitud' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'nombre_o1' => 'Nombre O1',
            'nombre_o2' => 'Nombre O2',
            'nombre_o3' => 'Nombre O3',
            'funcionario' => 'Funcionario',
            'fecha_registro' => 'Fecha Registro',
            'direccion' => 'Direccion',
            'id_direccion' => 'Id Direccion',
            'n_integrantes' => 'N Integrantes',
            'observaciones' => 'Observaciones',
            'servicios' => 'Servicios',
            'idtiposolicitud' => 'Idtiposolicitud',
            'idparroquia' => 'Idparroquia',
            'idservicios' => 'Idservicios',
            'id_user' => 'Id User',
            'id' => 'ID',
            'ciudad' => 'Ciudad',
        ];
    }

    /**
     * Gets query for [[DatosJuridicos]].
     *
     * @return \yii\db\ActiveQuery|DatosJuridicosQuery
     */
    public function getDatosJuridicos()
    {
        return $this->hasMany(DatosJuridicos::className(), ['iddatosorganizacion' => 'id']);
    }

    /**
     * Gets query for [[DatosPersonales]].
     *
     * @return \yii\db\ActiveQuery|DatosPersonalesQuery
     */
    public function getDatosPersonales()
    {
        return $this->hasMany(DatosPersonales::className(), ['id_organizacion' => 'id']);
    }

    /**
     * Gets query for [[Documentos]].
     *
     * @return \yii\db\ActiveQuery|DocumentosQuery
     */
    public function getDocumentos()
    {
        return $this->hasMany(Documentos::className(), ['id_organizacion' => 'id']);
    }

    /**
     * Gets query for [[Idparroquia0]].
     *
     * @return \yii\db\ActiveQuery|ParroquiaQuery
     */
    public function getIdparroquia0()
    {
        return $this->hasOne(Parroquia::className(), ['id' => 'idparroquia']);
    }

    /**
     * Gets query for [[Idservicios0]].
     *
     * @return \yii\db\ActiveQuery|ServiciosQuery
     */
    public function getIdservicios0()
    {
        return $this->hasOne(Servicios::className(), ['id' => 'idservicios']);
    }

    /**
     * Gets query for [[Idtiposolicitud0]].
     *
     * @return \yii\db\ActiveQuery|TipoSolicitudQuery
     */
    public function getIdtiposolicitud0()
    {
        return $this->hasOne(TipoSolicitud::className(), ['id' => 'idtiposolicitud']);
    }

    /**
     * {@inheritdoc}
     * @return DatosOrganizacionQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new DatosOrganizacionQuery(get_called_class());
    }
}
