<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "municipio".
 *
 * @property int $id
 * @property string|null $municipio
 * @property int|null $idestado
 *
 * @property Estado $idestado0
 * @property Parroquia[] $parroquias
 */
class Municipio extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'municipio';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id'], 'required'],
            [['id', 'idestado'], 'default', 'value' => null],
            [['id', 'idestado'], 'integer'],
            [['municipio'], 'string'],
            [['id'], 'unique'],
            [['idestado'], 'exist', 'skipOnError' => true, 'targetClass' => Estado::className(), 'targetAttribute' => ['idestado' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'municipio' => 'Municipio',
            'idestado' => 'Idestado',
        ];
    }

    /**
     * Gets query for [[Idestado0]].
     *
     * @return \yii\db\ActiveQuery|EstadoQuery
     */
    public function getIdestado0()
    {
        return $this->hasOne(Estado::className(), ['id' => 'idestado']);
    }

    /**
     * Gets query for [[Parroquias]].
     *
     * @return \yii\db\ActiveQuery|ParroquiaQuery
     */
    public function getParroquias()
    {
        return $this->hasMany(Parroquia::className(), ['idmunicipio' => 'id']);
    }

    /**
     * {@inheritdoc}
     * @return MunicipioQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new MunicipioQuery(get_called_class());
    }
}
