<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "tipo_solicitud".
 *
 * @property string|null $tipo
 * @property int $id
 *
 * @property DatosOrganizacion[] $datosOrganizacions
 */
class TipoSolicitud extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'tipo_solicitud';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['tipo'], 'string'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'tipo' => 'Tipo',
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
        return $this->hasMany(DatosOrganizacion::className(), ['idtiposolicitud' => 'id']);
    }
}
