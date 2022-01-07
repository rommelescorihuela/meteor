<?php

namespace frontend\models\search;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use frontend\models\Municipio;

/**
 * MunicipioSearch represents the model behind the search form of `app\models\Municipio`.
 */
class MunicipioSearch extends Municipio
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id','idestado'], 'integer'],
            [['municipio'], 'safe'],
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
    public function search($params)
    {
        $query = Municipio::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id' => $this->id,
        ]);

        $query->andFilterWhere(['ilike', 'municipio', $this->municipio]);
        $query->andFilterWhere(['=', 'idestado', $this->idestado]);

        return $dataProvider;
    }
}
