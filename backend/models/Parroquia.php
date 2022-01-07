<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "parroquia".
 *
 * @property int $id
 * @property string|null $parroquia
 * @property int|null $idmunicipio
 *
 * @property DatosOrganizacion[] $datosOrganizacions
 * @property Municipio $idmunicipio0
 */
class Parroquia extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'parroquia';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id'], 'required'],
            [['id', 'idmunicipio'], 'default', 'value' => null],
            [['id', 'idmunicipio'], 'integer'],
            [['parroquia'], 'string'],
            [['id'], 'unique'],
            [['idmunicipio'], 'exist', 'skipOnError' => true, 'targetClass' => Municipio::className(), 'targetAttribute' => ['idmunicipio' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'parroquia' => 'Parroquia',
            'idmunicipio' => 'Idmunicipio',
        ];
    }

    /**
     * Gets query for [[DatosOrganizacions]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getDatosOrganizacions()
    {
        return $this->hasMany(DatosOrganizacion::className(), ['idparroquia' => 'id']);
    }

    /**
     * Gets query for [[Idmunicipio0]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getIdmunicipio0()
    {
        return $this->hasOne(Municipio::className(), ['id' => 'idmunicipio']);
    }
}
