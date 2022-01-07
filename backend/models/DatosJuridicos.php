<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "datos_juridicos".
 *
 * @property int|null $estado_oficina
 * @property string|null $oficina_registro
 * @property string|null $numero
 * @property string|null $folio
 * @property string|null $tomo
 * @property string|null $fecha
 * @property string|null $rif
 * @property string|null $nit
 * @property int|null $iddatosorganizacion
 * @property int $id
 *
 * @property DatosOrganizacion $iddatosorganizacion0
 */
class DatosJuridicos extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'datos_juridicos';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['estado_oficina', 'iddatosorganizacion'], 'default', 'value' => null],
            [['estado_oficina', 'iddatosorganizacion'], 'integer'],
            [['oficina_registro', 'numero', 'folio', 'tomo', 'rif', 'nit'], 'string'],
            [['fecha'], 'safe'],
            [['iddatosorganizacion'], 'exist', 'skipOnError' => true, 'targetClass' => DatosOrganizacion::className(), 'targetAttribute' => ['iddatosorganizacion' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'estado_oficina' => 'Estado Oficina',
            'oficina_registro' => 'Oficina Registro',
            'numero' => 'Numero',
            'folio' => 'Folio',
            'tomo' => 'Tomo',
            'fecha' => 'Fecha',
            'rif' => 'Rif',
            'nit' => 'Nit',
            'iddatosorganizacion' => 'Iddatosorganizacion',
            'id' => 'ID',
        ];
    }

    /**
     * Gets query for [[Iddatosorganizacion0]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getIddatosorganizacion0()
    {
        return $this->hasOne(DatosOrganizacion::className(), ['id' => 'iddatosorganizacion']);
    }
}
