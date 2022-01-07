<?php

namespace backend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\UsuarioMaterial;

/**
 * UsuarioMaterialSearch represents the model behind the search form about `backend\models\UsuarioMaterial`.
 */
class UsuarioMaterialSearch extends UsuarioMaterial
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'id_alumno', 'id_material_apoyo', 'id_alumno_juridico'], 'integer'],
            [['visto'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = UsuarioMaterial::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        if (!($this->load($params) && $this->validate())) {
            return $dataProvider;
        }

        $query->andFilterWhere([
            'id' => $this->id,
            'id_alumno' => $this->id_alumno,
            'id_material_apoyo' => $this->id_material_apoyo,
            'id_alumno_juridico' => $this->id_alumno_juridico,
        ]);

        $query->andFilterWhere(['ilike', 'visto', $this->visto]);

        return $dataProvider;
    }
}
