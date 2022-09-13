<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "material_apoyo".
 *
 * @property int $id
 * @property string $nombre
 * @property string $tipo
 * @property int $id_taller
 * @property string|null $file
 * @property string|null $file_src_filename
 * @property string|null $file_web_filename
 *
 * @property Taller $taller
 * @property UsuarioMaterial[] $usuarioMaterials
 */
class MaterialApoyo extends \yii\db\ActiveRecord
{
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
            [['nombre', 'tipo', 'file', 'file_src_filename', 'file_web_filename'], 'string'],
            [['id_taller'], 'default', 'value' => null],
            [['id_taller'], 'integer'],
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
            'nombre' => 'Nombre',
            'tipo' => 'Tipo',
            'id_taller' => 'Id Taller',
            'file' => 'File',
            'file_src_filename' => 'File Src Filename',
            'file_web_filename' => 'File Web Filename',
        ];
    }

    /**
     * Gets query for [[Taller]].
     *
     * @return \yii\db\ActiveQuery|TallerQuery
     */
    public function getTaller()
    {
        return $this->hasOne(Taller::className(), ['id' => 'id_taller']);
    }

    /**
     * Gets query for [[UsuarioMaterials]].
     *
     * @return \yii\db\ActiveQuery|UsuarioMaterialQuery
     */
    public function getUsuarioMaterials()
    {
        return $this->hasMany(UsuarioMaterial::className(), ['id_material_apoyo' => 'id']);
    }

    /**
     * {@inheritdoc}
     * @return MaterialApoyoQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new MaterialApoyoQuery(get_called_class());
    }
}
