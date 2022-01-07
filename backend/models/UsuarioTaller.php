<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "usuario_taller".
 *
 * @property int $id
 * @property int|null $id_alumno
 * @property int $id_taller
 * @property string $visto
 * @property string $token
 * @property int|null $id_alumno_juridico
 *
 * @property DatosPersonales $alumno
 * @property DatosJuridicos $alumnoJuridico
 * @property Taller $taller
 */
class UsuarioTaller extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'usuario_taller';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_alumno', 'id_taller', 'id_alumno_juridico'], 'default', 'value' => null],
            [['id_alumno', 'id_taller', 'id_alumno_juridico'], 'integer'],
            [['id_taller', 'visto', 'token'], 'required'],
            [['visto', 'token'], 'string'],
            [['id_alumno_juridico'], 'exist', 'skipOnError' => true, 'targetClass' => DatosJuridicos::className(), 'targetAttribute' => ['id_alumno_juridico' => 'id']],
            [['id_alumno'], 'exist', 'skipOnError' => true, 'targetClass' => DatosPersonales::className(), 'targetAttribute' => ['id_alumno' => 'id']],
            [['id_taller'], 'exist', 'skipOnError' => true, 'targetClass' => Taller::className(), 'targetAttribute' => ['id_taller' => 'id']],
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
            'id_taller' => 'Id Taller',
            'visto' => 'Visto',
            'token' => 'Token',
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
     * Gets query for [[Taller]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getTaller()
    {
        return $this->hasOne(Taller::className(), ['id' => 'id_taller']);
    }
}
