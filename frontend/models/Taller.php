<?php

namespace frontend\models;

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
     * @return \yii\db\ActiveQuery|MaterialApoyoQuery
     */
    public function getMaterialApoyos()
    {
        return $this->hasMany(MaterialApoyo::className(), ['id_taller' => 'id']);
    }

    /**
     * Gets query for [[Preguntas]].
     *
     * @return \yii\db\ActiveQuery|PreguntasQuery
     */
    public function getPreguntas()
    {
        return $this->hasMany(Preguntas::className(), ['id_taller' => 'id']);
    }

    /**
     * Gets query for [[UsuarioTallers]].
     *
     * @return \yii\db\ActiveQuery|UsuarioTallerQuery
     */
    public function getUsuarioTallers()
    {
        return $this->hasMany(UsuarioTaller::className(), ['id_taller' => 'id']);
    }

    /**
     * {@inheritdoc}
     * @return TallerQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new TallerQuery(get_called_class());
    }
}
