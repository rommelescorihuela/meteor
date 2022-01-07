<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "material_apoyo".
 *
 * @property int $id
 * @property string $nombre
 * @property string $tipo
 * @property int $id_taller
 *
 * @property Taller $taller
 * @property UsuarioMaterial[] $usuarioMaterials
 */
class MaterialApoyo extends \yii\db\ActiveRecord
{
    public $file;
    public $file_src_filename;
    public $file_web_filename;
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'material_apoyo';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['nombre', 'tipo', 'id_taller'], 'required'],
            [['nombre', 'tipo'], 'string'],
            [['id_taller'], 'default', 'value' => null],
            [['id_taller'], 'integer'],
            [['id_taller'], 'exist', 'skipOnError' => true, 'targetClass' => Taller::className(), 'targetAttribute' => ['id_taller' => 'id']],
            [['file'], 'safe'],
            [['file'], 'file', 'extensions'=>'jpg, gif, png, pdf, mp4'],
            [['file'], 'file', 'maxSize'=>'1000000'],
            [['file_src_filename', 'file_web_filename'], 'string', 'max' => 255],

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
            'tipo' => 'Tipo',
            'id_taller' => 'Id Taller',
            'file_src_filename' => Yii::t('backend', 'Filename'),
            'file_web_filename' => Yii::t('backend', 'Pathname'),          
        ];
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

    /**
     * Gets query for [[UsuarioMaterials]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getUsuarioMaterials()
    {
        return $this->hasMany(UsuarioMaterial::className(), ['id_material_apoyo' => 'id']);
    }
}
