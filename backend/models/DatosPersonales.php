<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "datos_personales".
 *
 * @property string|null $nombre
 * @property string|null $apellido
 * @property int|null $cedula
 * @property string|null $profesion_oficio
 * @property string|null $telefono1
 * @property string|null $telefono2
 * @property string|null $telefono3
 * @property string|null $correo
 * @property int|null $representante
 * @property int|null $integrante
 * @property int|null $id_organizacion
 * @property int $id
 *
 * @property DatosOrganizacion $organizacion
 */
class DatosPersonales extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'datos_personales';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['nombre', 'apellido', 'profesion_oficio', 'telefono1', 'telefono2', 'telefono3', 'correo'], 'string'],
            [['cedula', 'representante', 'integrante', 'id_organizacion'], 'default', 'value' => null],
            [['cedula', 'representante', 'integrante', 'id_organizacion'], 'integer'],
            [['id_organizacion'], 'exist', 'skipOnError' => true, 'targetClass' => DatosOrganizacion::className(), 'targetAttribute' => ['id_organizacion' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'nombre' => 'Nombre',
            'apellido' => 'Apellido',
            'cedula' => 'Cedula',
            'profesion_oficio' => 'Profesion Oficio',
            'telefono1' => 'Telefono1',
            'telefono2' => 'Telefono2',
            'telefono3' => 'Telefono3',
            'correo' => 'Correo',
            'representante' => 'Representante',
            'integrante' => 'Integrante',
            'id_organizacion' => 'Id Organizacion',
            'id' => 'ID',
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
