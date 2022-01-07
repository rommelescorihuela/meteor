<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "documentos".
 *
 * @property string|null $documento
 * @property int|null $id_organizacion
 * @property int $id
 * @property int|null $tamano
 * @property int|null $create_at
 * @property int|null $orden
 * @property string|null $tipo
 * @property string|null $base_url
 * @property string|null $path
 *
 * @property DatosOrganizacion $organizacion
 */
class Documentos extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'documentos';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['documento', 'tipo', 'base_url', 'path'], 'string'],
            [['id_organizacion', 'tamano', 'create_at', 'orden'], 'default', 'value' => null],
            [['id_organizacion', 'tamano', 'create_at', 'orden'], 'integer'],
            [['id_organizacion'], 'exist', 'skipOnError' => true, 'targetClass' => DatosOrganizacion::className(), 'targetAttribute' => ['id_organizacion' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'documento' => 'Documento',
            'id_organizacion' => 'Id Organizacion',
            'id' => 'ID',
            'tamano' => 'Tamano',
            'create_at' => 'Create At',
            'orden' => 'Orden',
            'tipo' => 'Tipo',
            'base_url' => 'Base Url',
            'path' => 'Path',
        ];
    }

    /**
     * Gets query for [[Organizacion]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getOrganizacion()
    {
        return $this->hasOne(DatosOrganizacion::className(), ['id' => 'id_organizacion']);
    }
}
