<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "servicios".
 *
 * @property string|null $servicio
 * @property int $id
 *
 * @property DatosOrganizacion[] $datosOrganizacions
 */
class Servicios extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'servicios';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['servicio'], 'string'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'servicio' => 'Servicio',
            'id' => 'ID',
        ];
    }

    /**
     * Gets query for [[DatosOrganizacions]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getDatosOrganizacions()
    {
        return $this->hasMany(DatosOrganizacion::className(), ['idservicios' => 'id']);
    }
}
