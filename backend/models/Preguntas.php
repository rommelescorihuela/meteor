<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "preguntas".
 *
 * @property int $id
 * @property int $id_taller
 * @property string $pregunta
 *
 * @property Respuestas[] $respuestas
 * @property Taller $taller
 */
class Preguntas extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'preguntas';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_taller', 'pregunta'], 'required'],
            [['id_taller'], 'default', 'value' => null],
            [['id_taller'], 'integer'],
            [['pregunta'], 'string'],
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
            'id_taller' => 'Id Taller',
            'pregunta' => 'Pregunta',
        ];
    }

    /**
     * Gets query for [[Respuestas]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getRespuestas()
    {
        return $this->hasMany(Respuestas::className(), ['id_pregunta' => 'id']);
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
