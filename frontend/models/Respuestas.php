<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "respuestas".
 *
 * @property int $id
 * @property int $id_pregunta
 * @property int|null $id_alumno
 * @property string $respuesta
 * @property int|null $id_alumno_juridico
 *
 * @property DatosPersonales $alumno
 * @property DatosJuridicos $alumnoJuridico
 * @property Preguntas $pregunta
 */
class Respuestas extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'respuestas';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_pregunta', 'respuesta'], 'required'],
            [['id_pregunta', 'id_alumno', 'id_alumno_juridico'], 'default', 'value' => null],
            [['id_pregunta', 'id_alumno', 'id_alumno_juridico'], 'integer'],
            [['respuesta'], 'string'],
            [['id_alumno_juridico'], 'exist', 'skipOnError' => true, 'targetClass' => DatosJuridicos::className(), 'targetAttribute' => ['id_alumno_juridico' => 'id']],
            [['id_alumno'], 'exist', 'skipOnError' => true, 'targetClass' => DatosPersonales::className(), 'targetAttribute' => ['id_alumno' => 'id']],
            [['id_pregunta'], 'exist', 'skipOnError' => true, 'targetClass' => Preguntas::className(), 'targetAttribute' => ['id_pregunta' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'id_pregunta' => 'Id Pregunta',
            'id_alumno' => 'Id Alumno',
            'respuesta' => 'Respuesta',
            'id_alumno_juridico' => 'Id Alumno Juridico',
        ];
    }

    /**
     * Gets query for [[Alumno]].
     *
     * @return \yii\db\ActiveQuery|DatosPersonalesQuery
     */
    public function getAlumno()
    {
        return $this->hasOne(DatosPersonales::className(), ['id' => 'id_alumno']);
    }

    /**
     * Gets query for [[AlumnoJuridico]].
     *
     * @return \yii\db\ActiveQuery|DatosJuridicosQuery
     */
    public function getAlumnoJuridico()
    {
        return $this->hasOne(DatosJuridicos::className(), ['id' => 'id_alumno_juridico']);
    }

    /**
     * Gets query for [[Pregunta]].
     *
     * @return \yii\db\ActiveQuery|PreguntasQuery
     */
    public function getPregunta()
    {
        return $this->hasOne(Preguntas::className(), ['id' => 'id_pregunta']);
    }

    /**
     * {@inheritdoc}
     * @return RespuestasQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new RespuestasQuery(get_called_class());
    }
}
