<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "usuario_material".
 *
 * @property int $id
 * @property int|null $id_alumno
 * @property int $id_material_apoyo
 * @property string $visto
 * @property int|null $id_alumno_juridico
 *
 * @property DatosPersonales $alumno
 * @property DatosJuridicos $alumnoJuridico
 * @property MaterialApoyo $materialApoyo
 */
class UsuarioMaterial extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'usuario_material';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_alumno', 'id_material_apoyo', 'id_alumno_juridico'], 'default', 'value' => null],
            [['id_alumno', 'id_material_apoyo', 'id_alumno_juridico'], 'integer'],
            [['id_material_apoyo', 'visto'], 'required'],
            [['visto'], 'string'],
            [['id_alumno_juridico'], 'exist', 'skipOnError' => true, 'targetClass' => DatosJuridicos::className(), 'targetAttribute' => ['id_alumno_juridico' => 'id']],
            [['id_alumno'], 'exist', 'skipOnError' => true, 'targetClass' => DatosPersonales::className(), 'targetAttribute' => ['id_alumno' => 'id']],
            [['id_material_apoyo'], 'exist', 'skipOnError' => true, 'targetClass' => MaterialApoyo::className(), 'targetAttribute' => ['id_material_apoyo' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'id_alumno' => 'Id Alumno',
            'id_material_apoyo' => 'Id Material Apoyo',
            'visto' => 'Visto',
            'id_alumno_juridico' => 'Id Alumno Juridico',
        ];
    }

    /**
     * Gets query for [[Alumno]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getAlumno()
    {
        return $this->hasOne(DatosPersonales::className(), ['id' => 'id_alumno']);
    }

    /**
     * Gets query for [[AlumnoJuridico]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getAlumnoJuridico()
    {
        return $this->hasOne(DatosJuridicos::className(), ['id' => 'id_alumno_juridico']);
    }

    /**
     * Gets query for [[MaterialApoyo]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getMaterialApoyo()
    {
        return $this->hasOne(MaterialApoyo::className(), ['id' => 'id_material_apoyo']);
    }
}
