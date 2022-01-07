<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "taller".
 *
 * @property int $id
 * @property string|null $nombre
 *
 * @property MaterialApoyo[] $materialApoyos
 * @property Preguntas[] $preguntas
 * @property UsuarioTaller[] $usuarioTallers
 */
class Taller extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'taller';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['nombre'], 'string'],
            [['nombre'], 'required'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'nombre' => 'Nombre',
        ];
    }

    /**
     * Gets query for [[MaterialApoyos]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getMaterialApoyos()
    {
        return $this->hasMany(MaterialApoyo::className(), ['id_taller' => 'id']);
    }

    /**
     * Gets query for [[Preguntas]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getPreguntas()
    {
        return $this->hasMany(Preguntas::className(), ['id_taller' => 'id']);
    }

    /**
     * Gets query for [[UsuarioTallers]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getUsuarioTallers()
    {
        return $this->hasMany(UsuarioTaller::className(), ['id_taller' => 'id']);
    }
}
