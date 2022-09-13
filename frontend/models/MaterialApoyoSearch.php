<?php

namespace frontend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use frontend\models\MaterialApoyo;

/**
 * MaterialApoyoSearch represents the model behind the search form of `frontend\models\MaterialApoyo`.
 */
class MaterialApoyoSearch extends MaterialApoyo
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'id_taller'], 'integer'],
            [['nombre', 'tipo', 'file', 'file_src_filename', 'file_web_filename'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
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
    public function search($params,$id_taller)
    {
        $id_taller;
        $query = MaterialApoyo::find();
        $query->andFilterWhere([
            'id' => $this->id,
            'id_taller' => $id_taller,
        ]);
        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        if (!($this->load($params) && $this->validate())) {
            return $dataProvider;
        }


        $query->andFilterWhere(['ilike', 'nombre', $this->nombre])
            ->andFilterWhere(['ilike', 'tipo', $this->tipo]);
            
        return $dataProvider;
    }
}
